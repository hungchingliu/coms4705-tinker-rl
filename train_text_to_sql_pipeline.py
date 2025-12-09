import asyncio
import logging
import os
import json
import torch
import chz
import concurrent.futures
from tqdm import tqdm
import datasets
import pandas as pd

# Tinker Imports
import tinker
from tinker import TensorData
from tinker.types import SamplingParams, ModelInput
from tinker_cookbook import checkpoint_utils, model_info
from tinker_cookbook.supervised import train as supervised_train
from tinker_cookbook.supervised.types import ChatDatasetBuilderCommonConfig , SupervisedDataset
from tinker_cookbook.recipes.chat_sl.chat_datasets import ChatDatasetBuilder
from tinker_cookbook.renderers import TrainOnWhat

from tinker_cookbook.supervised.data import (
    SupervisedDatasetFromHFDataset,
    conversation_to_datum,
)

# Local Imports (Your provided files)
from sql_utils import execute_sql, extract_sql_from_response
from prompt_utils import format_initial_prompt, format_latest_correction_prompt

logger = logging.getLogger(__name__)

# --- CONFIGURATION ---
@chz.chz
class CLIConfig:
    # Model & Data Paths
    base_model: str = "Qwen/Qwen3-4B-Instruct-2507"
    short_name: str = "qwen-sql"
    db_root: str = "./spider_data/database"
    sft_dataset_path: str = "./train_8659.json" 
    rl_dataset_path: str = "./train_8659.json" # Subset for RL
    
    # Stages
    run_sft: bool = True
    run_rl: bool = True
    # Note: RM stage is removed as we use Execution Feedback for SQL
    
    # WandB
    wandb_project: str | None = "text-to-sql-tinker"
    wandb_name: str | None = "spider-run"
    
    # Training Hyperparams
    lora_rank: int = 32
    max_length: int = 4096
    batch_size: int = 8 
    
    sft_learning_rate: float = 2e-4
    rl_learning_rate: float = 1e-5
    
    save_every: int = 50
    eval_every: int = 20
    
    # RL Specifics (from train_tinker_multiturn.py)
    rl_max_turns: int = 5
    rl_temperature: float = 0.7
    rl_max_workers: int = 4


# --- 1. CUSTOM SFT DATASET BUILDER ---
@chz.chz
class SpiderSFTDatasetBuilder(ChatDatasetBuilder):
    """
    Builder for Spider Text-to-SQL dataset following the Tulu3Builder pattern.
    Requires local paths to be set in the config or passed during initialization.
    """
    training_ds_path: str = "train_8659.json"
    testing_ds_path: str = "test_2147.json"
    db_root: str = "./spider_data/database"
    db_test_root: str = "./spider_data/test_database"

    def load_and_clean_dataset(self, file_path):
        # 1. Load the raw JSON file using Python's standard json library
        #    (This avoids any immediate type errors from Arrow/Pandas)
        with open(file_path, 'r') as f:
            raw_data = json.load(f)

        # 2. Extract only the required fields and transform 'schema'
        processed_data = []
        for entry in raw_data:
            processed_data.append({
                "db_id": entry.get("db_id"),
                "query": entry.get("query"),
                "question": entry.get("question"),
                # Join the list of schema strings into one single string
                # We use '\n' as a separator for readability
                "schema": "\n".join(entry.get("schema", [])) 
            })

        # 3. Create a DataFrame first
        df = pd.DataFrame(processed_data)

        # 4. Convert to Hugging Face Dataset
        dataset = datasets.Dataset.from_pandas(df)
        
        return dataset

    def __call__(self) -> tuple[SupervisedDataset, SupervisedDataset]:
        # Load dataset from local JSON using Hugging Face datasets
        train_ds = self.load_and_clean_dataset(self.training_ds_path)
        test_ds = self.load_and_clean_dataset(self.testing_ds_path)

        # Determine training target
        train_on_what = (
            TrainOnWhat(self.common_config.train_on_what)
            if self.common_config.train_on_what
            else TrainOnWhat.LAST_ASSISTANT_MESSAGE
        )

        def map_fn(row: dict) -> tinker.Datum:
            schema = row['schema']
            
            # 2. Construct Messages
            system_msg = "You are an expert database engineer."
            user_content = f"**DATABASE SCHEMA**\n{schema}\n\n## USER QUESTION\n{row['question']}"
            
            # Formatted assistant output with SQL block
            assistant_content = f"<REASONING>\n(Reasoning unavailable for ground truth)\n</REASONING>\n```sql\n{row['query']}\n```"
            
            messages = [
                {"role": "system", "content": system_msg},
                {"role": "user", "content": user_content},
                {"role": "assistant", "content": assistant_content},
            ]

            # 3. Convert to Tinker Datum using the renderer
            return conversation_to_datum(
                messages, 
                self.renderer, 
                self.common_config.max_length, 
                train_on_what
            )

        # Return Train and Test datasets wrapped in SupervisedDatasetFromHFDataset
        return SupervisedDatasetFromHFDataset(
            train_ds, batch_size=self.common_config.batch_size, map_fn=map_fn
        ), SupervisedDatasetFromHFDataset(
            test_ds, batch_size=self.common_config.batch_size, map_fn=map_fn
        )


def sft_stage(config: CLIConfig, log_path: str):
    """
    Train base policy on Spider dataset (Schema+Question -> SQL).
    """
    print(f"--- Starting SFT Stage ---")
    
    renderer_name = model_info.get_recommended_renderer_name(config.base_model)
    
    common_config = ChatDatasetBuilderCommonConfig(
        model_name_for_tokenizer=config.base_model,
        renderer_name=renderer_name,
        max_length=config.max_length,
        batch_size=config.batch_size,
        train_on_what=TrainOnWhat.ALL_ASSISTANT_MESSAGES,
    )

    dataset_builder = SpiderSFTDatasetBuilder(common_config=common_config)

    train_config = supervised_train.Config(
        log_path=log_path,
        model_name=config.base_model,
        dataset_builder=dataset_builder,
        evaluator_builders=[], 
        num_epochs=1,
        learning_rate=config.sft_learning_rate,
        lr_schedule="linear",
        save_every=config.save_every,
        eval_every=config.eval_every,
        lora_rank=config.lora_rank,
        wandb_project=config.wandb_project,
        wandb_name=f"{config.wandb_name}-sft",
    )

    asyncio.run(supervised_train.main(train_config))


# --- 2. CUSTOM RL STAGE (EXECUTION FEEDBACK) ---

def process_single_rl_record(record, training_client, sampling_client, config: CLIConfig):
    """
    Worker function for multi-turn RL loop (Logic from train_tinker_multiturn.py)
    """
    local_payloads = []
    db_id = record['db_id']
    gold_sql = record['query']
    question = record['question']
    
    # Validation check on gold
    is_valid_gold, _, gold_result = execute_sql(gold_sql, db_id, base_path=config.db_root)
    if not is_valid_gold:
        return []

    schema = record['schema']
    current_prompt = format_initial_prompt(question, schema)
    
    last_generated_sql = None
    last_error_msg = None
    
    for turn in range(config.rl_max_turns):
        # Format Prompt (Initial or Correction)
        if turn > 0:
            current_prompt = format_latest_correction_prompt(
                question, schema, last_generated_sql, last_error_msg
            )

        tokenizer = training_client.get_tokenizer()
        prompt_input = ModelInput.from_ints(tokenizer.encode(current_prompt))
        
        # Sample
        params = SamplingParams(
            max_tokens=300, 
            temperature=config.rl_temperature,
            stop=["</SQL>", "<|im_end|>"], 
            return_logprobs=True
        )
        
        try:
            sample_obj = sampling_client.sample(
                prompt_input, sampling_params=params, num_samples=1
            ).result().sequences[0]
        except Exception as e:
            print(f"Sampling Error: {e}")
            break

        generated_text = tokenizer.decode(sample_obj.tokens)
        
        # Calculate Reward (Execution)
        pred_sql = extract_sql_from_response(generated_text)
        
        reward = 0.0
        turn_success = False
        should_continue = False

        if pred_sql is None:
            reward = -0.8
            last_generated_sql = generated_text 
            last_error_msg = "Could not find valid SQL in response"
            should_continue = True 
        else:
            success, error_msg, pred_result = execute_sql(pred_sql, db_id, base_path=config.db_root)
            last_generated_sql = pred_sql
            last_error_msg = error_msg
            
            if not success:
                reward = -0.5
                should_continue = True 
            elif pred_result != gold_result:
                reward = -0.2
                should_continue = False 
            else:
                reward = 1.0
                turn_success = True
                should_continue = False

        # Construct Datum
        full_tokens = ModelInput.from_ints(prompt_input.to_ints() + sample_obj.tokens)
        adv_temp = torch.ones(full_tokens.length)
        adv_temp[0:prompt_input.length] = 0.0 # Mask prompt
        
        datum = tinker.Datum(
            model_input=full_tokens,
            loss_fn_inputs={
                "target_tokens": TensorData.from_torch(torch.tensor(full_tokens.to_ints())),
                "logprobs": TensorData.from_torch(torch.tensor([0.0] * prompt_input.length + sample_obj.logprobs)),
                "advantages": TensorData.from_torch(adv_temp), 
            }
        )
        local_payloads.append((datum, reward))

        if turn_success or not should_continue:
            break
            
    return local_payloads

def run_rl_stage(config: CLIConfig, sft_log_path: str, rl_log_path: str):
    """
    Executes the RL training loop using environment feedback.
    """
    print(f"--- Starting RL Stage (Execution Feedback) ---")
    
    # 1. Load SFT Checkpoint
    sft_checkpoint_dict = checkpoint_utils.get_last_checkpoint(sft_log_path)
    if sft_checkpoint_dict is None:
         # Fallback if SFT wasn't run in this session, assume base or manual path
        print("No SFT checkpoint found, using base model or config weights.")
        weights_path = None
    else:
        weights_path = sft_checkpoint_dict["state_path"]
        print(f"Loading SFT weights from: {weights_path}")

    # 2. Initialize Tinker Client
    service = tinker.ServiceClient()
    training_client = service.create_lora_training_client(
        base_model=config.base_model,
        rank=config.lora_rank
    )
    
    if weights_path:
        training_client.load_state(weights_path)

    # 3. Load RL Dataset
    with open(config.rl_dataset_path, 'r') as f:
        dataset = json.load(f)

    global_step = 0
    
    # 4. Training Loop
    for i in tqdm(range(0, len(dataset), config.batch_size)):
        batch = dataset[i : i + config.batch_size]
        training_payloads = []
        
        # Snapshot weights for sampling
        sampling_client = training_client.save_weights_and_get_sampling_client()
        
        # Concurrent Data Generation
        with concurrent.futures.ThreadPoolExecutor(max_workers=config.rl_max_workers) as executor:
            futures = [
                executor.submit(process_single_rl_record, record, training_client, sampling_client, config) 
                for record in batch
            ]
            
            for future in concurrent.futures.as_completed(futures):
                try:
                    training_payloads.extend(future.result())
                except Exception as e:
                    print(f"Record exception: {e}")

        # PPO Update
        if len(training_payloads) > 0:
            rewards = torch.tensor([p[1] for p in training_payloads])
            
            # Normalize Advantages
            if len(rewards) > 1 and rewards.std() > 0:
                advs = (rewards - rewards.mean()) / (rewards.std() + 1e-8)
            else:
                advs = rewards - rewards.mean()

            final_data = []
            for (datum, _), adv in zip(training_payloads, advs):
                tensor = datum.loss_fn_inputs["advantages"].to_torch()
                # Apply computed advantage to the generation part (where mask was 1)
                tensor[tensor == 1] = adv
                datum.loss_fn_inputs["advantages"] = TensorData.from_torch(tensor)
                final_data.append(datum)

            try:
                training_client.forward_backward(final_data, loss_fn="ppo").result()
                training_client.optim_step(tinker.types.AdamParams(learning_rate=config.rl_learning_rate)).result()
                global_step += 1
                
                if config.wandb_project:
                    # Rudimentary logging placeholder
                    pass 

            except Exception as e:
                print(f"Update failed: {e}")

            # Saving
            if global_step % config.save_every == 0:
                save_name = f"{config.wandb_name}_step_{global_step}"
                try:
                    path = training_client.save_state(name=save_name).result().path
                    print(f"Saved checkpoint to {path}")
                    # Update checkpoint tracker for potential future resumes
                    checkpoint_utils.write_checkpoint(rl_log_path, global_step, path, path)
                except Exception as e:
                    print(f"Save failed: {e}")

# --- MAIN ---

def cli_main(cli_config: CLIConfig):
    log_path_root = os.path.expanduser(f"~/experiments/{cli_config.wandb_project}")
    sft_log_path = os.path.join(log_path_root, "sft")
    rl_log_path = os.path.join(log_path_root, "rl")
    
    os.makedirs(sft_log_path, exist_ok=True)
    os.makedirs(rl_log_path, exist_ok=True)

    if cli_config.run_sft:
        sft_stage(cli_config, sft_log_path)
        
    if cli_config.run_rl:
        run_rl_stage(cli_config, sft_log_path, rl_log_path)

if __name__ == "__main__":
    cli_config = chz.entrypoint(CLIConfig)
    cli_main(cli_config)