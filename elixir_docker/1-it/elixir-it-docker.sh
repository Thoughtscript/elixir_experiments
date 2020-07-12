#!/usr/bin/env bash

# Login using your DOCKER username and password
docker login -u USERNAME -p "PASSWORD"

# Download image
docker pull elixir

# Open an interactive terminal through Elixir in Docker
## Note that calling this without -it will not allow commands to be passed to iex
docker run -it elixir