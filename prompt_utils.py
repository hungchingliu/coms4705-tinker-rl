def get_base_prompt_template():
    """Your Team's Official Prompt Template"""
    return """**Role**
You are an expert database engineer. Your task is to translate a natural-language question into a valid, executable SQL query for SQLite, using only the tables and columns defined in the provided schema.

**DATABASE SCHEMA**
{schema}

**Requirements**
1. Reasoning first. Plan the tables, relationships, predicates, grouping, and engine-specific syntax before generating the query.
2. Use only names present in the schema. If something is missing, prefer the closest schema-backed alternative. Never invent tables/columns.
3. Match SQLite syntax. Use only functions/operators supported by that engine.

**Reasoning & Output Format**
1. First output your step-by-step reasoning inside this block:
<REASONING>
(Your step-by-step reasoning here.)
</REASONING>
2. After the reasoning block, output only the final SQL query in this format:
```sql
your SQL QUERY HERE
```

## USER QUESTION
{question}
"""

def format_initial_prompt(question, schema):
    """Wraps the template in ChatML format for Qwen."""
    user_content = get_base_prompt_template().format(
        schema=schema,
        db_engine="SQLite",
        question=question
    )
    # Qwen Chat Format
    return f"<|im_start|>user\n{user_content}<|im_end|>\n<|im_start|>assistant\n"

def format_correction_prompt(previous_history_str, bad_sql, error_msg):
    """
    Appends the error log to the history for the next turn.
    previous_history_str: The full text generated so far (User Prompt + AI Bad Response)
    """
    error_content = f"""
Previous attempt failed. Here's what happened:

Generated SQL:
```sql
{bad_sql if bad_sql else 'No SQL extracted'}
```
Error: {error_msg}

Please analyze the error and generate a corrected SQL query."""

    # Append the user error message in ChatML format
    return f"{previous_history_str}\n<|im_start|>user\n{error_content}<|im_end|>\n<|im_start|>assistant\n"