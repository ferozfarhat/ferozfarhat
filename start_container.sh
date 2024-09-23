#!/bin/bash

# Define variables
IMAGE_NAME="your_image_name"
CONTAINER_NAME="your_container_name"
PORT="5000"  # Change this if your application uses a different port

# Stop and remove any existing container with the same name
if [ "$(docker ps -aq -f name=${CONTAINER_NAME})" ]; then
    echo "Stopping and removing existing container..."
    docker stop ${CONTAINER_NAME}
    docker rm ${CONTAINER_NAME}
fi

# Build the Docker image
echo "Building the Docker image..."
docker build -t ${IMAGE_NAME} .

# Run the Docker container
echo "Starting the Docker container..."
docker run -d --name ${CONTAINER_NAME} -p ${PORT}:5000 ${IMAGE_NAME}

echo "Container ${CONTAINER_NAME} is up and running on port ${PORT}."

