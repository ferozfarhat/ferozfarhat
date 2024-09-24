#!/bin/bash
set -e

# Stop and remove the container (if any)
containerid=$(docker ps | awk '{print $1}')
docker rm -f $containerid
