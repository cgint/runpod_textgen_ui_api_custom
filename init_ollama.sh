#!/bin/bash
mkdir -p /workspace/ollama/root_ollama
ln -s /workspace/ollama/root_ollama /root/.ollama
curl https://ollama.ai/install.sh | sh
ollama serve &
# Wait for ollama to start
sleep 1

echo "Here are the installed ollama packages:"
ollama list