#!/bin/bash
# Script to stop the Ollama service

echo "Stopping Ollama service..."
if sudo systemctl stop ollama.service; then
    echo "Ollama service stopped successfully."
else
    echo "Failed to stop Ollama service!" >&2
    exit 1
fi

