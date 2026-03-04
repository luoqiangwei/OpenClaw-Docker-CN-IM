#!/bin/bash

# Get the IDs of all containers
CONTAINER_IDS=$(docker ps -aq)

# Check if there are any containers to delete
if [ -z "$CONTAINER_IDS" ]; then
    echo "No containers found. System is already clean."
else
    echo "Warning: Force removing all Docker containers..."
    # -f flag forces removal of running containers
    docker rm -f $CONTAINER_IDS
    echo "Done. All containers have been purged."
fi
