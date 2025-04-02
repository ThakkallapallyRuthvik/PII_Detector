@echo off
set AGENT_URL=https://raw.githubusercontent.com/ThakkallapallyRuthvik/PII_Detector/main/agent.py
set AGENT_PATH=%USERPROFILE%\agent.py

:: Download agent.py
powershell -Command "& {Invoke-WebRequest %AGENT_URL% -OutFile %AGENT_PATH%}"

:: Run agent.py
python %AGENT_PATH%
