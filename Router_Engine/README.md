# Router Engine - LlamaIndex

A RAG (Retrieval Augmented Generation) application using LlamaIndex that answers questions from a PDF document. It uses a Router Query Engine to automatically decide between summarization and specific context retrieval.

## Project Structure

```
Router_Engine/
├── L1_Router_Engine.ipynb   # Main notebook
├── utils.py                 # Router query engine logic
├── helper.py                # OpenAI API key loader
├── requirements.txt         # Package list
├── setup.sh                 # Environment setup script
└── metagpt.pdf              # Source document
```

## Setup

**1. Run the setup script**
```bash
bash setup.sh
```

**2. Create a `.env` file in the project root**
```
OPENAI_API_KEY=your-api-key-here
```

**3. Select the kernel in Jupyter**

Open `L1_Router_Engine.ipynb` and select the `LlamaIndex (venv)` kernel.

## How It Works

The Router Query Engine loads `metagpt.pdf`, splits it into chunks, and builds two indexes:

- **SummaryIndex** — used for summarization questions
- **VectorStoreIndex** — used for specific context retrieval

The router automatically selects the appropriate index based on the query.

## Dependencies

| Package | Version |
|---------|---------|
| llama-index | 0.10.27 |
| llama-index-llms-openai | 0.1.15 |
| llama-index-embeddings-openai | 0.1.7 |
| openai | 1.3.5 |
| python-dotenv | 1.0.0 |

