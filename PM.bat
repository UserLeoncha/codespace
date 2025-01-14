@echo off

REM Function to build Docker image without tag
ECHO Building Docker image without tag...
powershell -Command "docker build -t %1 ."


REM Function to stop all containers using the same image
ECHO Stopping all containers using the image: %1...
powershell -Command "docker ps -aq --filter ancestor=%1 | ForEach-Object { docker stop $_; docker rm $_ }"

REM Remove any existing container with the same name
ECHO Removing any existing container with the name: %2...
powershell -Command "docker rm %2 -f"

REM start a new container
ECHO create a new container using the image: %1...
powershell -Command "docker run -v .\:/home/leoncha/codespace --name %2 -it %1"