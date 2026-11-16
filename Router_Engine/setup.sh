#!/bin/bash
# LlamaIndex Router Engine - Environment Setup Script
# Usage: bash setup.sh

echo "Removing old virtual environment if exists..."
rm -rf venv

echo "Creating virtual environment..."
python3.10 -m venv venv

echo "Activating virtual environment..."
source venv/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip --quiet

echo "Installing compatible packages..."
pip install python-dotenv==1.0.0 --quiet
pip install "openai==1.40.0" --quiet
pip install "llama-index==0.10.68" --quiet
pip install "llama-index-llms-openai==0.1.31" --quiet
pip install "llama-index-embeddings-openai==0.1.11" --quiet
pip install nest_asyncio --quiet
pip install ipykernel --quiet

echo "Registering Jupyter kernel..."
python -m ipykernel install --user --name=llamaindex-env --display-name "LlamaIndex (venv)"

echo ""
echo "Setup complete. Select the 'LlamaIndex (venv)' kernel in your notebook."
echo "Installed versions:"
pip show openai llama-index llama-index-llms-openai | grep -E "^(Name|Version):"
