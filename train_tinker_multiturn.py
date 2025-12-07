import os
import torch
import tinker
import tqdm
import json
from sql_utils import get_schema, execute_sql, extract_sql_from_response
from prompt_utils import format_initial_prompt, format_correction_prompt
from tinker import TensorData
from tinker.types import SamplingParams, ModelInput

# --- CONFIGURATION ---
MODEL_NAME = "Qwen/Qwen3-4B-Instruct-2507" 
DB_ROOT = "./spider_data/database"
MAX_TURNS = 10     # How many times allowed to self-correct
BATCH_SIZE = 2    # Keep small for multi-turn logic
LEARNING_RATE = 1e-5
LOCAL_DATASET_PATH = "./train_8659.json"

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
        training_payloads = [] # Stores (Datum, Reward) tuples
        
        # Snapshot weights for this batch's sampling
        sampling_client = training_client.save_weights_and_get_sampling_client()

        print(f"\n--- Batch {i//BATCH_SIZE} ---")
        
        # Process each example in the batch
        for idx, record in enumerate(batch):
            db_id = record['db_id']
            gold_sql = record['query']
            question = record['question']
            
            # Get Ground Truth Result
            is_valid_gold, _, gold_result = execute_sql(gold_sql, db_id, base_path=DB_ROOT)

            if not is_valid_gold:
                print(f"Skipping {db_id}: Gold SQL failed to execute.")
                continue

            # Load Schema
            schema = get_schema(db_id, base_path=DB_ROOT)
            
            # Initialize Prompt
            current_full_text = format_initial_prompt(question, schema)
            
            # --- MULTI-TURN LOOP ---
            for turn in range(MAX_TURNS):
                # A. SAMPLE (Remote)
                tokenizer = training_client.get_tokenizer()
                prompt = ModelInput.from_ints(tokenizer.encode(current_full_text))
                params = SamplingParams(
                    max_tokens=300, 
                    temperature=0.7,
                    stop=["</SQL>", "<|im_end|>"], # Stop exactly after SQL tag
                    return_logprobs=True
                )
                sample_obj = sampling_client.sample(
                    prompt,
                    sampling_params=params,
                    num_samples=1
                ).result().sequences[0]

                generated_text = tokenizer.decode(sample_obj.tokens)
                # print(generated_text)
                
                # B. EXTRACT & EXECUTE (Local)
                pred_sql = extract_sql_from_response(generated_text)
                
                # Default Reward state
                reward = 0.0
                turn_success = False
                should_continue = False

                if pred_sql is None:
                    # Failure: No SQL found
                    reward = -0.8
                    error_msg = "Could not find valid SQL"
                    should_continue = True # Try to ask it to fix format
                else:
                    success, error_msg, pred_result = execute_sql(pred_sql, db_id, base_path=DB_ROOT)
                    
                    if not success:
                        # Failure: Execution Error (Syntax, Table missing, etc)
                        reward = -0.5
                        should_continue = True # Retry with error log
                    elif pred_result != gold_result:
                        # Failure: Wrong Answer (Logic error)
                        # Hard to self-correct logic without Ground Truth access in prompt
                        # We penalize and stop (or you can try to ask "Are you sure?")
                        reward = -0.2
                        should_continue = False 
                    else:
                        # Success!
                        reward = 1.0
                        turn_success = True
                        should_continue = False

                # C. PREPARE TRAINING DATUM
                # We train on the specific segment generated in this turn
                
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
                training_payloads.append((datum, reward))

                # D. PREPARE NEXT STEP
                if turn_success:
                    print(f"✓ Success on Turn {turn+1}")
                    break
                
                if should_continue and turn < MAX_TURNS - 1:
                    # Append the model's output + User Error Message to history
                    current_full_text += generated_text 
                    current_full_text = format_correction_prompt(current_full_text, pred_sql, error_msg)
                    print(f"⚠ Error Turn {turn+1}: {error_msg[:50]}... Retrying.")
                else:
                    break

        # --- UPDATE PHASE ---
        if len(training_payloads) > 0:
            # Normalize rewards across the batch
            rewards = torch.tensor([p[1] for p in training_payloads])
            if rewards.std() > 0:
                advs = (rewards - rewards.mean()) / (rewards.std() + 1e-8)
            else:
                advs = rewards - rewards.mean()

            # Inject Advantages
            final_data = []
            for (datum, _), adv in zip(training_payloads, advs):
                # Broadcast the scalar advantage to every token
                # Tinker expects: len(advantages) == len(target_tokens)
                tensor = datum.loss_fn_inputs["advantages"].to_torch()
                tensor[tensor == 1] = adv
                datum.loss_fn_inputs["advantages"] = TensorData.from_torch(tensor)

                final_data.append(datum)

            # Tinker API Calls
            print(f"Updating with {len(final_data)} samples. Mean Reward: {rewards.mean():.2f}")
            training_client.forward_backward(final_data, loss_fn="ppo").result()
            training_client.optim_step(tinker.types.AdamParams(learning_rate=LEARNING_RATE)).result()
            global_step += 1

            if global_step == 1 or global_step%200 == 0:
                save_path = f"./checkpoints/step_{global_step}"
                print(f"Saving checkpoint to {save_path}...")
                training_client.save_adapter(save_path)

    ### Save
    save_path = f"./checkpoints/step_{global_step}_final"
    print(f"Saving checkpoint to {save_path}...")
    # Tinker client usually exposes a method to download/save the current adapter state
    training_client.save_adapter(save_path)

if __name__ == "__main__":
    main()