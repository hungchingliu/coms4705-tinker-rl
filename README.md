# Tinker RL for Text-to-SQL (Spider Dataset)

This repository implements a **Reinforcement Learning (RL)** loop for training LLMs on the Text-to-SQL task using the **Tinker API**. 

It uses a **Multi-Turn Self-Correction** approach: the model generates SQL, executes it locally, and if it fails, the error log is fed back into the model for a second attempt. We use PPO (Proximal Policy Optimization) to reinforce successful corrections.

## 📂 Project Structure

```text
.
├── train_tinker_multiturn.py  # Main training loop (PPO, Logging, Checkpointing)
├── sql_utils.py               # Local execution environment (SQLite execution & Scoring)
├── prompt_utils.py            # Prompt templates (Reasoning + SQL XML tags)
├── train_8659.json            # training dataset Downloaded from shared Google Drive
├── requirements.txt           # Python dependencies
└── spider/                    # (Required) Downloaded from shared Google Drive
    └── database/              # Contains .sqlite files for execution
```

## Getting Start
```bash 
python -m venv venv
pip install -r requirements.txt
export TINKER_API_KEY=tsk_your_key_here
python train_text_to_sql_pipeline.py 
```