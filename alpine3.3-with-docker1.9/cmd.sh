#/bin/bash

name="alpine_docker-1.9"

docker build --no-cache -t alpine:docker-1.9 -f Dockerfile .

docker rm -f $(docker ps -aq --filter="name=$name")

# -v /var/run/docker1.sock:/var/run/docker1.sock
docker run -it -d --name $name -v $HOME/Source:/data alpine:docker-1.9