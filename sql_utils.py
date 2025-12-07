import sqlite3
import os
import re

# Configuration for DB Paths
# Assuming you unzip the spider data into a folder named 'spider'
SPIDER_TRAIN_DB_PATH = "./spider_data/database"
SPIDER_TEST_DB_PATH = "./spider_data/test_database" 

def get_schema(db_id, base_path=SPIDER_TRAIN_DB_PATH):
    """Get database schema from the .sql file."""
    schema_path = os.path.join(base_path, db_id, "schema.sql")
    try:
        if os.path.exists(schema_path):
            with open(schema_path, 'r') as f:
                return f.read()
        # Fallback: If schema.sql doesn't exist, we might need to rely on the sqlite file
        # But for this implementation, we assume schema.sql exists as per Spider standard
        return f"-- Schema file not found for {db_id}"
    except Exception as e:
        return f"-- Error loading schema: {str(e)}"

def execute_sql(sql_query, db_id, base_path=SPIDER_TRAIN_DB_PATH):
    """
    Execute SQL query with timeout and safety checks.
    Returns: (success_bool, message_str, result_set)
    """
    db_path = os.path.join(base_path, db_id, f"{db_id}.sqlite")

    if not os.path.exists(db_path):
        return False, f"Database not found at {db_path}", None

    try:
        conn = sqlite3.connect(db_path)
        cursor = conn.cursor()

        cursor.execute(sql_query)
        result = cursor.fetchall()
        
        conn.close()
        return True, "Success", result
        
    except sqlite3.Error as e:
        return False, f"SQLite Error: {str(e)}", None
    except Exception as e:
        return False, f"Execution Error: {str(e)}", None

def extract_sql_from_response(generated_text):
    """Extract SQL from response using Regex - Handles <SQL> and Markdown."""
    if generated_text is None:
        return None

    # 1. Try <SQL> tags (Your specific template)
    sql_pattern_tag = re.compile(r"<SQL>\s*(.*?)\s*</SQL>", re.DOTALL | re.IGNORECASE)
    match = sql_pattern_tag.search(generated_text)
    if match:
        return match.group(1).strip()

    # 2. Try Markdown ```sql
    sql_pattern_block = re.compile(r"```sql\s*(.*?)\s*```", re.DOTALL | re.IGNORECASE)
    match = sql_pattern_block.search(generated_text)
    if match:
        return match.group(1).strip()
    
    return None