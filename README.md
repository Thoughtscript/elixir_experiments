# elixir_experiments

[![](https://img.shields.io/badge/Elixir-1.10.0-purple.svg)](https://elixir-lang.org)
[![](https://img.shields.io/badge/DockerHub-Elixir-blue.svg)](https://hub.docker.com/_/elixir)

## Setup and Installation

Erlang is a required dependency for Elixir. Unfortunately, it can't be installed easily on MacOS.

Therefore, the recommended way is to spin up a Docker instance (with [Docker Desktop](https://www.docker.com/products/docker-desktop) installed):

```Bash
$ docker pull elixir
$ docker run elixir
```

Specifically, grab the [Elixir Docker Image](https://hub.docker.com/_/elixir) from Docker Hub. The directory [elixir-docker](./elixir_docker) contains a variety of examples demonstrating how to work with Elixir programs with a Docker container.

Furthermore, the best approach to editing is probably Visual Studio Code. Make sure to grab the [vscode-elixir](https://marketplace.visualstudio.com/items?itemName=mjmcloug.vscode-elixir) plugin.

> See: https://www.poeticoding.com/running-elixir-in-docker-containers/

## Programming Notes

The other directory [elixir_lang](./elixir_lang) contains simple programming (syntax and the like) examples.

> See: https://elixir-lang.org/