#!/bin/bash
IMAGE_NAME="my:alpine_apache"

docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

docker build --no-cache=true -t $IMAGE_NAME . 