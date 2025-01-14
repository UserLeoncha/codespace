@echo off

REM Check if the required parameters are provided
IF "%1"=="esp" (
    ECHO esp environment build
    
    REM Function to build Docker image without tag
    ECHO Building Docker image without tag...
    powershell -Command "docker build -t %1 .\docs\esp"

    REM Function to stop all containers using the same image
    ECHO Stopping all containers using the image: %1...
    powershell -Command "docker ps -aq --filter ancestor=%1 | ForEach-Object { docker stop $_; docker rm $_ }"

    REM Remove any existing container with the same name
    ECHO Removing any existing container with the name: %2...
    powershell -Command "docker rm %2 -f"

    REM start a new container
    ECHO create a new container using the image: %1...
    powershell -Command "docker run -v .\:/home/leoncha/codespace --name %2 -it %1"
)

REM Check if the required parameters are provided
IF "%1"=="cpp" (
    ECHO Please provide the Docker image name.
    ECHO Usage: PM.bat <image_name> <container_name>
    EXIT /B 1
)

REM Check if the required parameters are provided
IF "%1"=="website" (
    ECHO Please provide the Docker image name.
    ECHO Usage: PM.bat <image_name> <container_name>
    EXIT /B 1
)
