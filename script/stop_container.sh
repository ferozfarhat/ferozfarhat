#!/bin/bash
set -e

# Stop and remove the container (if any)
containerid=$(docker ps | awk -F " " '{print $1}')

if [ -n "$containerid" ]; then
    # Stop the container
    docker stop $containerid
    # Remove the container
    docker rm -f $containerid
else
    echo "No running containers to stop."
fi
