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
├── Building_an_Agent_Reasoning_Loop/
│   ├── L3_Building_an_Agent_Reasoning_Loop.ipynb
│   └── utils.py
├── Building_a_Multi_Document_Agent/
│   ├── L4_Building_a_Multi-Document_Agent.ipynb
│   ├── utils.py
│   └── data/     # Research papers (PDFs)
├── helper.py
├── metagpt.pdf
├── requirements.txt
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

### 3. Building an Agent Reasoning Loop (Lesson 3)
Demonstrates multi-step agent reasoning and execution control:
- Agent Architecture: Separates decision logic (FunctionCallingAgentWorker) from execution state and memory (AgentRunner).
- Reasoning Loop: Executes iterative cycles of thought, action, and observation to solve multi-part questions across a document.
- Conversational Memory: Maintains multi-turn context across chat queries.
- Lower-Level Control: Manages task execution step-by-step using create_task and run_step for debugging and steering execution.

### 4. Building a Multi-Document Agent (Lesson 4)
Demonstrates scaling agentic workflows across multiple documents:
- Multi-Document Tool Setup: Constructs vector and summary query tools across multiple distinct research papers.
- Scalability Bottlenecks: Addresses the limitations of passing large sets of tools directly into LLM prompts.
- Dynamic Tool Retrieval: Implements ObjectIndex over tool definitions to dynamically retrieve only the most relevant tools per query.
- Comparative Question Answering: Enables the agent to autonomously retrieve and synthesize information across separate documents.

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
