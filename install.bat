@echo off
echo Downloading agent.py...
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/ThakkallapallyRuthvik/PII_Detector/refs/heads/main/agent.py', 'agent.py')"
if %errorlevel% neq 0 (
    echo Failed to download agent.py
    exit /b
)

echo Running agent.py...
python agent.py
