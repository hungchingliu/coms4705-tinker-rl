import os
import torch
import tinker
import json
import concurrent.futures
from datetime import datetime
from tqdm import tqdm
from sql_utils import get_schema, execute_sql, extract_sql_from_response
from prompt_utils import format_initial_prompt, format_latest_correction_prompt

from tinker import TensorData
from tinker.types import SamplingParams, ModelInput

# --- CONFIGURATION ---
MODEL_NAME = "Qwen/Qwen3-4B-Instruct-2507" 
DB_ROOT = "./spider_data/database"
MAX_TURNS = 10      
BATCH_SIZE = 8      # Increased for concurrency (see explanation below)
LEARNING_RATE = 1e-5
LOCAL_DATASET_PATH = "./train_8659.json"
NAME = datetime.now().strftime("%m-%d-%H-%M")
MAX_WORKERS = 8     # Number of parallel threads

def process_single_record(record, training_client, sampling_client):
    """
    Handles the multi-turn loop for a single record.
    Returns a list of (datum, reward) tuples.
    """
    local_payloads = []
    
    db_id = record['db_id']
    gold_sql = record['query']
    question = record['question']
    
    # Get Ground Truth Result
    is_valid_gold, _, gold_result = execute_sql(gold_sql, db_id, base_path=DB_ROOT)

    if not is_valid_gold:
        return [] # Return empty if gold fails

    # Load Schema
    schema = get_schema(db_id, base_path=DB_ROOT)
    
    # Initialize Prompt
    current_prompt = format_initial_prompt(question, schema)
    last_generated_sql = None
    last_error_msg = None
    
    # --- MULTI-TURN LOOP ---
    for turn in range(MAX_TURNS):
        # A. SAMPLE (Remote)
        if turn > 0:
            current_prompt = format_latest_correction_prompt(
                question, 
                schema, 
                last_generated_sql, 
                last_error_msg
            )

        tokenizer = training_client.get_tokenizer()
        prompt = ModelInput.from_ints(tokenizer.encode(current_prompt))
        params = SamplingParams(
            max_tokens=300, 
            temperature=0.7,
            stop=["</SQL>", "<|im_end|>"], 
            return_logprobs=True
        )
        try: 
            # Note: Assuming sampling_client is thread-safe. 
            # If not, create a new client per thread.
            sample_obj = sampling_client.sample(
                prompt,
                sampling_params=params,
                num_samples=1
            ).result().sequences[0]
        except Exception as e:
            print(f"Sampling Error: {e}")
            break

        generated_text = tokenizer.decode(sample_obj.tokens)
        
        # B. EXTRACT & EXECUTE (Local)
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
            success, error_msg, pred_result = execute_sql(pred_sql, db_id, base_path=DB_ROOT)
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

        # C. PREPARE TRAINING DATUM
        full_tokens = ModelInput.from_ints(prompt.to_ints() + sample_obj.tokens)
        adv_temp = torch.ones(full_tokens.length)
        adv_temp[0:prompt.length] = 0.0
        datum = tinker.Datum(
            model_input=full_tokens,
            loss_fn_inputs={
                "target_tokens": TensorData.from_torch(torch.tensor(full_tokens.to_ints())),
                "logprobs": TensorData.from_torch(torch.tensor([0.0] * prompt.length + sample_obj.logprobs)),
                "advantages": TensorData.from_torch(adv_temp),
            }
        )
        local_payloads.append((datum, reward))

        if turn_success:
            break
        
        if should_continue and turn < MAX_TURNS - 1:
            pass # Continue to next turn
        else:
            break
            
    return local_payloads

def main():
    # 1. Initialize Tinker
    service = tinker.ServiceClient()
    print(f"Initializing Training on {MODEL_NAME}...")
    
    training_client = service.create_lora_training_client(
        base_model=MODEL_NAME,
        rank=32
    )

    # 2. Load Data
    with open(LOCAL_DATASET_PATH, 'r') as f:
        dataset = json.load(f)

    # 3. Training Loop
    global_step = 0
    
    # Iterate through dataset in chunks
    for i in tqdm(range(0, len(dataset), BATCH_SIZE)):
        batch = dataset[i : i + BATCH_SIZE]
        training_payloads = [] 
        
        # Snapshot weights for this batch's sampling
        sampling_client = training_client.save_weights_and_get_sampling_client()

        tqdm.write(f"\n--- Batch {i//BATCH_SIZE} Processing ---")
        
        # --- CONCURRENT EXECUTION START ---
        with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
            # Map the helper function to the batch
            futures = [
                executor.submit(process_single_record, record, training_client, sampling_client) 
                for record in batch
            ]
            
            # Gather results as they complete
            for future in concurrent.futures.as_completed(futures):
                try:
                    result_payloads = future.result()
                    training_payloads.extend(result_payloads)
                except Exception as exc:
                    tqdm.write(f"Record generated an exception: {exc}")
        # --- CONCURRENT EXECUTION END ---

        # --- UPDATE PHASE (Remains mostly the same) ---
        if len(training_payloads) > 0:
            rewards = torch.tensor([p[1] for p in training_payloads])
            
            # Safety check for single-sample batches to avoid NaN in normalization
            if len(rewards) > 1 and rewards.std() > 0:
                advs = (rewards - rewards.mean()) / (rewards.std() + 1e-8)
            else:
                advs = rewards - rewards.mean()

            final_data = []
            for (datum, _), adv in zip(training_payloads, advs):
                tensor = datum.loss_fn_inputs["advantages"].to_torch()
                tensor[tensor == 1] = adv
                datum.loss_fn_inputs["advantages"] = TensorData.from_torch(tensor)
                final_data.append(datum)

            try:
                tqdm.write(f"Updating with {len(final_data)} samples. Mean Reward: {rewards.mean():.2f}")
                training_client.forward_backward(final_data, loss_fn="ppo").result()
                training_client.optim_step(tinker.types.AdamParams(learning_rate=LEARNING_RATE)).result()
                global_step += 1
            except Exception as e:
                tqdm.write(f"Update failed: {e}")
                continue

            if global_step == 1 or global_step % 100 == 0:
                name = NAME + "_" + str(global_step)
                # Ensure saving is done safely
                try:
                    save_path = training_client.save_state(name=name).result().path
                    tqdm.write(f"Saved to {save_path}")
                except Exception as e:
                    tqdm.write(f"Save failed: {e}")

    # Final save
    name = NAME + "_" + str(global_step)
    try:
        save_path = training_client.save_state(name=name).result().path
        tqdm.write(f"Saved to {save_path}")
    except Exception as e:
        tqdm.write(f"Save failed: {e}")    

if __name__ == "__main__":
    main()