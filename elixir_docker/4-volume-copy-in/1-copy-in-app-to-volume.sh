#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Create a volume
docker volume create volume_example_2

# View the volumes
docker volume ls

# Copy into the volume with a dummy image
docker run -d --rm --name dummy -v myvolume:/root alpine tail -f /dev/null
docker cp elixir-mix/mix_example_1 dummy:/root/.mix
docker stop dummy

# Run the Docker container using the created volume
docker container run --rm -v volume_example_2-mix:/root/.mix -v $PWD:/app -w /app -it elixir 

# Cleanup
docker system prune --volumes