#!/bin/bash
set -e

# Stop and remove the container (if any)
containerid= 'docker ps | awk -F " " '{print $1}''
docker rm -f $containerid
