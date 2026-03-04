#!/bin/bash

# Target container name
TARGET="openclaw-gateway"

# Check if the container is currently running
if [ "$(docker ps -q -f name=^/${TARGET}$)" ]; then
    echo "Connecting to ${TARGET} bash environment..."
    # -it starts an interactive terminal
    docker exec -it "$TARGET" /bin/bash
else
    echo "Error: Container '${TARGET}' is not running or does not exist."
    echo "Please check 'docker ps' to verify its status."
fi
