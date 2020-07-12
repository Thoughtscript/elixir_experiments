#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Create a volume
docker volume create volume_example_2

# View the volumes
docker volume ls

# Create the app in the local directory
## Navigate to the elixir-mix directory in here
docker container run --rm -v $PWD:/data -w /data elixir mix new mix_example_2

# Run the Docker container using the created volume
docker container run --rm -v volume_example_2:/root/ -v $PWD:/data -w /data -it elixir mix compile mix_example_2

# Cleanup
docker system prune --volumes