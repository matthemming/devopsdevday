#!/bin/sh

docker login -u $DOCKER_USERNAME -p $DOCKER_PWD
TAG="latest"

docker build -t $TRAVIS_REPO_SLUG:$TAG
docker push $TRAVIS_REPO_SLUG:$TAG
