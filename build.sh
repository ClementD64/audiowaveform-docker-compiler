#!/bin/sh

# create the audiowaveform image
docker image build -t audiowaveform .
# create the container
docker create -ti --name audiowaveform audiowaveform 
# copy the file   
docker cp audiowaveform:/a/audiowaveform ./audiowaveform
# remove the container
docker rm -f audiowaveform
# remove the image
docker rmi audiowaveform