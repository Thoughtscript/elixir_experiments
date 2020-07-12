#!/usr/bin/env bash

# See the container and obtain the CONTAINER ID
docker stats

# See the downloaded images and obtain the IMAGE ID
docker images --all

# Remove container
docker stop CONTAINER_ID
docker rm CONTAINER_ID

# Remove downloaded image
docker rmi -f IMAGE_ID

# Remove all containers and volumes
docker system prune

# Remove all containers and volumes
docker system prune --volumes