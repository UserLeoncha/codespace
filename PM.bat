@echo off

:: Check for admin rights
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting administrative privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

REM Function to build Docker image without tag
ECHO Building Docker image without tag...
powershell -Command "docker build -t %1 ."


REM Function to stop all containers using the same image
ECHO Stopping all containers using the image: %1...
powershell -Command "docker ps -aq --filter ancestor=%1 | ForEach-Object { docker stop $_; docker rm $_ }"


REM start a new container
ECHO create a new container using the image: %1...
powershell -Command "docker run -v .\:/home/leoncha/codespace --name %2 -p 5050:5050 -it %1"