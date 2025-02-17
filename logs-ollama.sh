#!/bin/bash
# Script to check logs for the Ollama service

echo "Fetching logs for Ollama service..."
sudo journalctl -u ollama.service -n 50 --no-pager

