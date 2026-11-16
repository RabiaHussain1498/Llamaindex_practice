# LlamaIndex Practice

This repository contains practical implementations of advanced Retrieval-Augmented Generation (RAG) concepts using LlamaIndex and OpenAI models.

## Project Structure

```
Llamaindex_Practice/
├── Router_Engine/
│   ├── L1_Router_Engine.ipynb
│   └── utils.py
├── Tool_Calling/
│   └── L2_Tool_Calling.ipynb
├── helper.py
├── metagpt.pdf
├── requirements.txt
├── .env
└── README.md
```

## Modules Covered

### 1. Router Engine (Lesson 1)
Demonstrates how to route user queries dynamically between different query engines:
- SummaryIndex: Handles broad summarization queries across the entire document.
- VectorStoreIndex: Handles specific factual and context retrieval queries.
- RouterQueryEngine: Uses an LLM selector to evaluate the query intent and route it to the appropriate engine.

### 2. Tool Calling (Lesson 2)
Demonstrates agentic retrieval using LLM function calling capabilities:
- Custom Function Tools: Wraps vector queries and metadata filters into callable tools.
- Metadata Filtering: Dynamically filters document chunks based on page numbers extracted by the LLM.
- Tool Selection: Allows the LLM to autonomously choose between tools (such as vector search and summary tools) and pass the necessary arguments.

## Setup Instructions

1. Clone the repository and navigate to the project directory:
   ```bash
   cd Llamaindex_Practice
   ```

2. Create and activate a Python virtual environment:
   ```bash
   python3.10 -m venv venv
   source venv/bin/activate
   ```

3. Install the required dependencies:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

4. Configure your environment variables:
   Create a `.env` file in the root directory and add your OpenAI API key:
   ```
   OPENAI_API_KEY=your_openai_api_key_here
   ```

5. Register the Jupyter kernel:
   ```bash
   python -m ipykernel install --user --name=llamaindex-env --display-name "LlamaIndex (venv)"
   ```

6. Open the notebooks in Jupyter or VS Code, select the `LlamaIndex (venv)` kernel, and run the cells.

