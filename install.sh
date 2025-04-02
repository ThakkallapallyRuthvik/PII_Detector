#!/bin/bash

echo "Downloading agent.py..."
curl -o agent.py https://raw.githubusercontent.com/ThakkallapallyRuthvik/PII_Detector/refs/heads/main/agent.py

if [ $? -ne 0 ]; then
    echo "Failed to download agent.py"
    exit 1
fi

echo "Running agent.py..."
python3 agent.py
