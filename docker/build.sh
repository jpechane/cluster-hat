#!/bin/bash

TAG=latest
REPOSITORY=jpechane
PREFIX=chat

for IMAGE in {base,registry}; do
  docker build -t "$REPOSITORY/${PREFIX}-${IMAGE}:${TAG}" $IMAGE
done
