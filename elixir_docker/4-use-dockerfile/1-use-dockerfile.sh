#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Recommended to drop an example from the elixir/mix dir into this dir

# Build from dockerfile
## Use this over `docker build - < Dockerfile`
docker build .

# Cleanup
docker system prune --volumes