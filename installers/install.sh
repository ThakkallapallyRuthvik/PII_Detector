#!/bin/bash

AGENT_URL="https://raw.githubusercontent.com/ThakkallapallyRuthvik/PII_Detector/main/agent.py"
AGENT_PATH="$HOME/agent.py"

# Download agent.py
curl -o "$AGENT_PATH" "$AGENT_URL"

# Run agent.py
python3 "$AGENT_PATH"
