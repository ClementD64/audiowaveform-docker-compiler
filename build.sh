#!/bin/sh

# generate unique build id
BUILD_ID=$(cat /proc/sys/kernel/random/uuid)

# create the image
docker build -t $BUILD_ID .

# create the container
CONTAINER_ID=$(docker create $BUILD_ID)

# copy the file   
docker cp $CONTAINER_ID:/_/audiowaveform ./audiowaveform

# remove the container
docker rm $CONTAINER_ID

# remove the image
docker rmi $BUILD_ID