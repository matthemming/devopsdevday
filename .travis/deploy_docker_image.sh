#!/bin/sh

docker login -u $DOCKER_USERNAME -p $DOCKER_PWD
TAG="latest"

docker build -t matthemming/scrapeme:$TAG .
docker push matthemming/scrapeme:$TAG
