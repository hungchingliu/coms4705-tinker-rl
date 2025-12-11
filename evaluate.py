import os
import json
import torch
import tinker
import concurrent.futures
import numpy as np
from tqdm import tqdm
from tinker import TensorData
from tinker.types import SamplingParams, ModelInput
from datetime import datetime

# --- Import your Utils ---
from sql_utils import execute_sql, extract_sql_from_response
from prompt_utils import format_initial_prompt, format_latest_correction_prompt

# --- CONFIGURATION ---
BASE_MODEL = "Qwen/Qwen3-4B-Instruct-2507"
MODEL_PATH = "tinker://c3acc03b-ed8f-5b9e-a8ac-11a79d4cd20b:train:0/weights/spider-run_step_1050"
DB_ROOT = "./spider_data/test_database"
EVAL_DATASET_PATH = "./test_2147.json"  # Point to your dev set
MAX_TURNS = 3     # For Ex@3
MAX_WORKERS = 8   # Parallel threads

def evaluate_single_record(record, training_client, sampling_client):
    """
    Runs up to MAX_TURNS for a single record.
    Returns a dict with execution stats.
    """
    stats = {
        "is_correct_at_1": False,
        "is_correct_at_k": False,
        "turns_taken": -1,
        "error_fix_opportunities": 0,
        "error_fixed": 0
    }

    db_id = record['db_id']
    gold_sql = record['query']
    question = record['question']

    # 1. Get Ground Truth Result
    is_valid_gold, _, gold_result = execute_sql(gold_sql, db_id, base_path=DB_ROOT)
    if not is_valid_gold:
        return None # Skip records where Gold SQL is broken

    # 2. Prepare Schema & Prompt
    schema = "\n".join(record.get("schema", []))
    current_prompt = format_initial_prompt(question, schema)
    
    last_generated_sql = None
    last_error_msg = None
    previous_was_error = False

    tokenizer = training_client.get_tokenizer()

    for turn in range(MAX_TURNS):
        # A. Format Prompt (Correction if turn > 0)
        if turn > 0:
            current_prompt = format_latest_correction_prompt(
                question, 
                schema, 
                last_generated_sql, 
                last_error_msg
            )

        # B. Sample
        prompt_ids = tokenizer.encode(current_prompt)
        prompt_input = ModelInput.from_ints(prompt_ids)
        params = SamplingParams(
            max_tokens=300, 
            temperature=0.0, # Greedy decoding for Eval is standard
            stop=["</SQL>", "<|im_end|>"]
        )
        
        try:
            sample_obj = sampling_client.sample(
                prompt_input,
                sampling_params=params,
                num_samples=1
            ).result().sequences[0]
            generated_text = tokenizer.decode(sample_obj.tokens)
        except Exception as e:
            print(f"Sampling Error: {e}")
            break

        # C. Extract & Execute
        pred_sql = extract_sql_from_response(generated_text)
        success, error_msg, pred_result = False, "No SQL found", []
        
        if pred_sql:
            success, error_msg, pred_result = execute_sql(pred_sql, db_id, base_path=DB_ROOT)

        # Update Fix Rate Metrics
        if previous_was_error:
            stats["error_fix_opportunities"] += 1
            if success: # It executed successfully (even if result is wrong)
                stats["error_fixed"] += 1

        # Check Correctness (Exact Set Match)
        # Note: Depending on your strictness, you might want to sort results before comparing
        is_correct = False
        if success:
            # Simple set comparison (ignoring order for now)
            try:
                # Convert results to sets of tuples for order-agnostic comparison
                if set(pred_result) == set(gold_result):
                    is_correct = True
            except:
                # Fallback for unhashable types
                if pred_result == gold_result:
                    is_correct = True

        # D. Record Success
        if is_correct:
            if turn == 0:
                stats["is_correct_at_1"] = True
            stats["is_correct_at_k"] = True
            stats["turns_taken"] = turn + 1
            break # Solved!
        
        # E. Prepare for next turn
        last_generated_sql = pred_sql if pred_sql else generated_text
        last_error_msg = error_msg
        previous_was_error = not success # If this turn failed to execute, next turn is a fix opportunity

    return stats

def main():
    # 1. Initialize Tinker Sampling Client
    service = tinker.ServiceClient()
    
    # We use a training client to load weights, then get a sampling interface
    # Alternatively, you can just use create_sampling_client if you have a deployed endpoint
    # Here we stick to your training pattern:
    training_client = service.create_lora_training_client(base_model=BASE_MODEL, rank=32)
    training_client.load_state(MODEL_PATH)
    sampling_client = training_client.save_weights_and_get_sampling_client()

    # 2. Load Data
    with open(EVAL_DATASET_PATH, 'r') as f:
        dataset = json.load(f)
    
    print(f"Starting Evaluation on {len(dataset)} records...")
    
    results = []
    
    # 3. Parallel Evaluation Loop
    with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
        futures = {executor.submit(evaluate_single_record, record, training_client, sampling_client): record for record in dataset}
        
        for future in tqdm(concurrent.futures.as_completed(futures), total=len(dataset)):
            try:
                res = future.result()
                if res: # Not None (valid gold)
                    results.append(res)
            except Exception as e:
                print(f"Error processing record: {e}")

    # 4. Calculate Metrics
    total = len(results)
    if total == 0:
        print("No valid results to calculate.")
        return

    ex_at_1 = sum(1 for r in results if r["is_correct_at_1"])
    ex_at_k = sum(1 for r in results if r["is_correct_at_k"])
    
    # Fix Rate Calculation
    total_fix_ops = sum(r["error_fix_opportunities"] for r in results)
    total_fixed = sum(r["error_fixed"] for r in results)

    print("\n" + "="*40)
    print(f"EVALUATION REPORT ({MAX_TURNS} Turns)")
    print("="*40)
    print(f"Total Records: {total}")
    print(f"Ex@1 (First Try):       {ex_at_1 / total:.2%} ({ex_at_1}/{total})")
    print(f"Ex@{MAX_TURNS} (Cumulative):     {ex_at_k / total:.2%} ({ex_at_k}/{total})")
    
    if total_fix_ops > 0:
        print(f"SQL Error Fix Rate:   {total_fixed / total_fix_ops:.2%} ({total_fixed}/{total_fix_ops} opportunities)")
    else:
        print("SQL Error Fix Rate:   N/A (No errors encountered)")
    print("="*40)

if __name__ == "__main__":
    main()