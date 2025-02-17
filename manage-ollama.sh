#!/bin/bash

start_service() {
    echo "Starting Ollama service..."
    sudo systemctl start ollama.service || { echo "Failed to start Ollama!" >&2; exit 1; }
}

stop_service() {
    echo "Stopping Ollama service..."
    sudo systemctl stop ollama.service || { echo "Failed to stop Ollama!" >&2; exit 1; }
}

case "$1" in 
    start) start_service ;;
    stop) stop_service ;;
    *) echo "Usage: $0 {start|stop}" ;;
esac

