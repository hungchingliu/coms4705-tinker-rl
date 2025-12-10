import os
import json
import argparse
import sys
import torch
import tinker
import concurrent.futures
from tqdm import tqdm
from tinker import TensorData
from tinker.types import SamplingParams, ModelInput

from sql_utils import execute_sql, extract_sql_from_response
from prompt_utils import format_initial_prompt, format_latest_correction_prompt

# --- DEFAULTS ---
DEFAULT_BASE_MODEL = "Qwen/Qwen3-4B-Instruct-2507"
DB_ROOT = "./spider_data/test_database"
MAX_TURNS = 4 # Based on the example output showing index 3 (4 turns)
MAX_WORKERS = 8

def parse_args():
    parser = argparse.ArgumentParser(description="Run Inference to generate multi-turn SQL execution logs.")
    parser.add_argument("--model_path", type=str, default=None, 
                        help="Tinker model path (e.g., tinker://...). If not provided, base model is used.")
    parser.add_argument("--base_model", type=str, default=DEFAULT_BASE_MODEL, 
                        help="Base model ID.")
    parser.add_argument("--input_file", type=str, default="./test_2147.json", 
                        help="Input dataset JSON path.")
    parser.add_argument("--output_file", type=str, default="inference_output.json", 
                        help="Output JSON path.")
    return parser.parse_args()

def process_single_record(record, sampling_client, tokenizer):
    """
    Runs multi-turn inference for a single record.
    Stops if SQL executes successfully or MAX_TURNS is reached.
    """
    # Create a copy of the record to append results to
    result_record = record.copy()
    
    db_id = record['db_id']
    question = record['question']
    # Handle schema: it might be a list in JSON or a string
    schema_raw = record.get("schema", [])
    if isinstance(schema_raw, list):
        schema = "\n".join(schema_raw)
    else:
        schema = str(schema_raw)

    current_prompt = format_initial_prompt(question, schema)
    
    # Store the initial prompt in the record as per example format
    if "prompt" not in result_record:
        result_record["prompt"] = current_prompt

    last_generated_sql = None
    last_error_msg = None
    
    multi_round_reflect = []
    
    # Tracking final state variables
    final_response = ""
    final_pred_sql = ""
    final_exec_result = {"success": False, "error": "Max turns reached"}

    for turn in range(MAX_TURNS):
        # 1. Update Prompt for Correction if this is a retry
        if turn > 0:
            current_prompt = format_latest_correction_prompt(
                question, 
                schema, 
                last_generated_sql, 
                last_error_msg
            )

        # 2. Sample from Model
        prompt_ids = tokenizer.encode(current_prompt)
        prompt_input = ModelInput.from_ints(prompt_ids)
        
        # Greedy decoding for deterministic evaluation
        params = SamplingParams(
            max_tokens=300, 
            temperature=0.0, 
            stop=["</SQL>", "<|im_end|>"]
        )
        
        generated_text = ""
        try:
            sample_obj = sampling_client.sample(
                prompt_input,
                sampling_params=params,
                num_samples=1
            ).result().sequences[0]
            generated_text = tokenizer.decode(sample_obj.tokens)
        except Exception as e:
            generated_text = f"Error during sampling: {str(e)}"

        # 3. Extract SQL
        pred_sql = extract_sql_from_response(generated_text)
        
        # 4. Execute SQL
        success = False
        error_msg = "No SQL found"
        # We don't need the actual result rows for the JSON output, just success status
        if pred_sql:
            success, error_msg, _ = execute_sql(pred_sql, db_id, base_path=DB_ROOT)

        # 5. Format Execution Result
        exec_info = {
            "success": success,
            "error": error_msg if not success else None
        }

        # 6. Record this turn
        turn_data = {
            "idx": str(turn),
            "raw_response": generated_text,
            "pred_sql": pred_sql if pred_sql else "",
            "pred_sql_exec": exec_info
        }
        multi_round_reflect.append(turn_data)

        # Update tracking variables for next iteration or final output
        last_generated_sql = pred_sql if pred_sql else generated_text
        last_error_msg = error_msg
        
        final_response = generated_text
        final_pred_sql = pred_sql if pred_sql else ""
        final_exec_result = exec_info

        # 7. Stopping Condition: Success
        if success:
            break

    # Attach results to record
    result_record["response"] = final_response
    result_record["pred_sql"] = final_pred_sql
    result_record["pred_sql_exec"] = final_exec_result
    result_record["exection_correct"] = final_exec_result["success"] # Matches your typo in example "exection"
    result_record["multi_round_reflect"] = multi_round_reflect

    return result_record

def main():
    args = parse_args()
    
    # 1. Initialize Tinker Client
    service = tinker.ServiceClient()
    
    print(f"Initializing model. Base: {args.base_model}")
    
    # To ensure we get the tokenizer compatible with the model, we use the training client pattern
    # even if we aren't training. 
    training_client = service.create_lora_training_client(base_model=args.base_model, rank=32)
    
    if args.model_path:
        print(f"Loading weights from: {args.model_path}")
        training_client.load_state(args.model_path)
    else:
        print("No model_path provided via argv. Sampling from BASE MODEL.")

    tokenizer = training_client.get_tokenizer()
    sampling_client = training_client.save_weights_and_get_sampling_client()

    # 2. Load Data
    if not os.path.exists(args.input_file):
        print(f"Error: Input file {args.input_file} not found.")
        return

    with open(args.input_file, 'r') as f:
        dataset = json.load(f)
    
    print(f"Starting Inference on {len(dataset)} records...")
    
    final_output = []
    
    # 3. Parallel Inference Loop
    # We map indexes to futures to ensure order isn't strictly necessary but helpful for debugging
    with concurrent.futures.ThreadPoolExecutor(max_workers=MAX_WORKERS) as executor:
        futures = {
            executor.submit(process_single_record, record, sampling_client, tokenizer): i 
            for i, record in enumerate(dataset)
        }
        
        # tqdm to show progress
        for future in tqdm(concurrent.futures.as_completed(futures), total=len(dataset)):
            try:
                result = future.result()
                final_output.append(result)
            except Exception as e:
                print(f"Error processing a record: {e}")

    # 4. Save Results
    # Sort by original index if 'idx' exists, otherwise just dump
    try:
        final_output.sort(key=lambda x: x.get('idx', 0))
    except:
        pass # If idx is missing or inconsistent, ignore sorting

    print(f"Saving results to {args.output_file}...")
    with open(args.output_file, 'w') as f:
        json.dump(final_output, f, indent=4)
    
    print("Done.")

if __name__ == "__main__":
    main()