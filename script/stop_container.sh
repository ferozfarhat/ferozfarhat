#!/bin/bash
set -e

#Stop the container (if any)
containerid='docker ps | awk -F "" '{print $1}'
docker rm - f dockerid
