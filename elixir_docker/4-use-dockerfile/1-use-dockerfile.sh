#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Recommended to drop an example from the elixir/mix dir into this dir

# Build from dockerfile
## Use this over `docker build - < Dockerfile`
## Note that the dockerfile copies in ANY files in this directory
## Feel free to drop in a whole mix project
docker build .
## Get the CONTAINER ID <b671c7aa4ffc> from the end of this

# Connect to the CONTAINER 
docker run -it --entrypoint bash <b671c7aa4ffc>
# Or, if it's currently running
docker exec -it <b671c7aa4ffc> bash

# Execute script
elixir helloworld.exs

# Cleanup
docker system prune --volumes