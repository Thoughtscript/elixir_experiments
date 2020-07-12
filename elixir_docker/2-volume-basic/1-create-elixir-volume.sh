#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Create a volume
docker volume create volume_example_1

# View the volumes
docker volume ls

# Run the Docker container using the created volume
## Future times this is run will leave the created Elixir projects in the volume
docker container run --rm -v volume_example_1-mix:/root -it elixir 

# Cleanup
docker system prune --volumes