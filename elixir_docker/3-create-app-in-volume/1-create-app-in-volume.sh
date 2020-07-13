#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Create a volume
docker volume create volume_example_2

# View the volumes
docker volume ls

# Run the Docker container using the created volume
## Open bash
docker container run --rm -v volume_example_2:/root/ -v $PWD:/data -w /data -it elixir bash

## Execute in container Bash:
mix new example
cd example
MIX_ENV=test mix test
mix run
## Note: you may not see any outputs simply because the default mix files don't print

## Execute in container Bash:
cd lib
iex
### iex(1)> 
c "./example.ex"
### > [Example]

### iex(2)> 
Example.hello()
### > :world
## Above, the .ex file was loaded into iex as a dependency then executed

# Cleanup
docker system prune --volumes