#!/bin/bash
set -e

# Stop and remove the container (if any)
containerid=$(docker ps -q)  # Capture the ID of running containers

if [ -n "$containerid" ]; then
    # Stop the container
    docker stop $containerid
    # Remove the container
    docker rm -f $containerid
else
    echo "No running containers to stop."
fi
