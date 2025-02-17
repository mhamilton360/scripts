#!/bin/bash
# Script to start the Ollama service

LOGFILE=~/logs/ollama.log

echo "$(date): Starting Ollama service..." >> $LOGFILE

if sudo systemctl start ollama.service; then
	echo "$(date): Ollama service started successfully." >> $LOGFILE
else
	echo "$(date): Failed to start Ollama service!" >> $LOGFILE  >&2
    exit 1
fi

