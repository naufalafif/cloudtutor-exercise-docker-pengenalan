#!/bin/bash

CONTAINER_NAME="my-whoami"
IMAGE_NAME="containous/whoami"

if docker ps -a --filter "name=$CONTAINER_NAME" --filter "ancestor=$IMAGE_NAME" | grep -q "$CONTAINER_NAME"; then
    PORTS=$(docker port $CONTAINER_NAME)
    if [[ "$PORTS" == *"80/tcp -> 0.0.0.0:3000"* ]]; then
        echo "OK"
        exit 0
    else
        echo "Container tidak terexpose pada port 3000"
        exit 1
    fi
else
  echo "Container tidak ditemukan"
fi
