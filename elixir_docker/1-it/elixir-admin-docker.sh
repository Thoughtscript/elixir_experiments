#!/usr/bin/env bash

# See the container
docker stats

# See the downloaded images and obtain the IMAGE ID
docker images --all
 
# Remove downloaded image
docker rmi -f IMAGE_ID