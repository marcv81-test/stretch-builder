#!/bin/sh

docker build docker -t stretch-builder:latest
docker run --rm -it --volume `pwd`/workspace:/home/builder/workspace stretch-builder:latest
