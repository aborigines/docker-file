#!/bin/bash
PATH_WEB="/home/koko/Source/baccarat"
PATH_DOCKERDATA="/home/koko/Source/docker-data"
DOCKER_NAME_HOSTNAME="koko.dev"
docker rm -f $DOCKER_NAME_HOSTNAME
docker run -d -p 18880:80 -p 18444:443 --hostname $DOCKER_NAME_HOSTNAME --net mynet --ip 172.16.0.2 --name=$DOCKER_NAME_HOSTNAME -v $PATH_WEB:/www -v $PATH_DOCKERDATA:/docker-data --privileged -P my:alpine_apache 