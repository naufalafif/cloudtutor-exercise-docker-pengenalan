#!/bin/bash

# Set the name of the Docker image you want to check for
IMAGE_NAME="containous/whoami"

# Check if the Docker image exists
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
  echo "Docker image $IMAGE_NAME tidak ditemukan."
else
  echo "OK"
fi