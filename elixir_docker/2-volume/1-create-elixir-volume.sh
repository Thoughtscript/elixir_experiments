#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Create a volume
docker volume create volume_example_1

docker container run -v --rm volume_example_1:/root/.mix -v $PWD:/app -w /app -it elixir mix compile