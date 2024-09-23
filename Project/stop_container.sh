#!/bin/bash

# Define variables
CONTAINER_NAME="your_container_name"

# Check if the container is running
if [ "$(docker ps -q -f name=${CONTAINER_NAME})" ]; then
    echo "Stopping the container ${CONTAINER_NAME}..."
    docker stop ${CONTAINER_NAME}
else
    echo "Container ${CONTAINER_NAME} is not running."
fi

# Check if the container exists
if [ "$(docker ps -aq -f name=${CONTAINER_NAME})" ]; then
    echo "Removing the container ${CONTAINER_NAME}..."
    docker rm ${CONTAINER_NAME}
else
    echo "Container ${CONTAINER_NAME} does not exist."
fi

echo "Container ${CONTAINER_NAME} has been stopped and removed."

