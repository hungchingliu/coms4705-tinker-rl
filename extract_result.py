import json

def extract_sql_data(input_file, gold_file, pred_file, pred_reflect_file):
    try:
        # Open and load the JSON data
        with open(input_file, 'r', encoding='utf-8') as f:
            data = json.load(f)

        # Open all three output files for writing
        with open(gold_file, 'w', encoding='utf-8') as f_gold, \
             open(pred_file, 'w', encoding='utf-8') as f_pred, \
             open(pred_reflect_file, 'w', encoding='utf-8') as f_reflect:

            count = 0
            for entry in data:
                # 1. Extract Gold SQL (key is "query") and DB ID
                gold_sql = entry.get('query', '').replace('\n', ' ').strip()
                gold_sql = " ".join(gold_sql.split())
                db_id = entry.get('db_id', '').strip()
                f_gold.write(f"{gold_sql}\t{db_id}\n")

                # 2. Extract standard Predicted SQL
                pred_sql = entry.get('pred_sql', '').replace('\"', ' ').replace('\n', ' ').replace(';', ' ').strip()
                pred_sql = " ".join(pred_sql.split())
                if not pred_sql:
                    pred_sql = "placeholder"
                f_pred.write(f"{pred_sql}\n")

                # 3. Extract pred_sql from multi_round_reflect where idx is 0
                reflect_sql = ""
                multi_reflect = entry.get('multi_round_reflect', [])
                
                if isinstance(multi_reflect, list):
                    for item in multi_reflect:
                        # Check for idx 0 (handling both string "0" and integer 0)
                        if item.get('idx') == "0" or item.get('idx') == 0:
                            reflect_sql = item.get('pred_sql', '').replace('\"', ' ').replace('\n', ' ').replace(';', ' ').strip()
                            reflect_sql = " ".join(reflect_sql.split())
                            break
                if not reflect_sql:
                    reflect_sql = "placeholder"
                f_reflect.write(f"{reflect_sql}\n")
                
                count += 1

        print(f"Successfully processed {count} records.")
        print(f"Generated: {gold_file}")
        print(f"Generated: {pred_file}")
        print(f"Generated: {pred_reflect_file}")

    except FileNotFoundError:
        print(f"Error: The file '{input_file}' was not found.")
    except json.JSONDecodeError:
        print(f"Error: Failed to decode JSON from '{input_file}'.")
    except Exception as e:
        print(f"An error occurred: {e}")

# --- Execution ---
if __name__ == "__main__":
    base_path = "inference_data/"
    INPUT_FILENAME = ["b", "nr", "sft", "sft+rl"] 
    GOLD_OUTPUT = 'gold.sql'
    PRED_OUTPUT = 'pred.sql'
    PRED_REFLECT_OUTPUT = '@1.sql'
    for file_name in INPUT_FILENAME:
        path = base_path + file_name + ".json"
        gold = base_path + file_name + '_' + GOLD_OUTPUT
        pred = base_path + file_name + '_' + PRED_OUTPUT
        ref = base_path + file_name + '_' + PRED_REFLECT_OUTPUT
        extract_sql_data(path, gold, pred, ref)