#!/bin/bash
# Check if OLLAMA_INIT is not set to "true"
if [ "$OLLAMA_INIT" != "true" ]; then
    echo "OLLAMA_INIT is not set to 'true'. Exiting."
    exit 1
fi

mkdir -p /workspace/ollama/root_ollama
ln -s /workspace/ollama/root_ollama /root/.ollama
curl https://ollama.ai/install.sh | sh
ollama serve &
# Wait for ollama to start
sleep 1

echo "Here are the installed ollama packages:"
ollama list

# Check if OLLAMA_PULL is set and not empty
if [ -n "$OLLAMA_PULL" ]; then
    echo "Preloading ollama models $OLLAMA_PULL"

    # Convert the comma-separated string into an array
    IFS=',' read -ra ADDR <<< "$OLLAMA_PULL"

    # Iterate over the array and run 'ollama pull' for each item
    for i in "${ADDR[@]}"; do
        echo "Running 'ollama pull' for $i"
        ollama pull "$i" &
    done
else
    echo "OLLAMA_PULL is not set or empty"
fi
