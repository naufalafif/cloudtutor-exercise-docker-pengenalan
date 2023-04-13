#!/bin/bash

IMAGE_NAME="containous/whoami"  # set the image name you want to check
CONTAINER_NAME="my-whoami"  # set the container name you want to check

if docker ps -a --filter "name=$CONTAINER_NAME" --filter "ancestor=$IMAGE_NAME" | grep -q "$CONTAINER_NAME"; then
  echo "Docker container belum dihentikan atau dihapus"
else
  echo "OK"
fi