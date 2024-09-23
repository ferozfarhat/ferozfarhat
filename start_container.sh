#!/bin/bash
set -e

# pull the docker image from docker hub
docker pull docker pull feroztt2/ferozfarhat

# Run the docker image as a container
docker run -d -p 5000:5000 feroztt2/ferozfarhat
