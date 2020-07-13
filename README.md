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

Specifically, grab the [Elixir Docker Image](https://hub.docker.com/_/elixir) from Docker Hub. 

> The directory [elixir-docker](./elixir_docker) contains a variety of examples demonstrating how to work with Elixir programs with a Docker container.

Furthermore, the best approach to editing is probably Visual Studio Code. Make sure to grab the [vscode-elixir](https://marketplace.visualstudio.com/items?itemName=mjmcloug.vscode-elixir) plugin.

Resources: 

1. https://www.poeticoding.com/running-elixir-in-docker-containers/
1. https://medium.com/@pentacent/getting-started-with-elixir-docker-982e2a16213c
1. https://pspdfkit.com/blog/2018/how-to-run-your-phoenix-application-with-docker/

> **Note:** the supplied bash scripts are not intended to be "simply executed" - they are to be walked through line by line. Some, for instance, contain Bash to start a Docker container and Bash to execute within it!

## Programming Notes

> The other directory [elixir_lang](./elixir_lang) contains simple programming (syntax and the like) examples.

Elixir-specific programming notes are described below:

1. Elixir runs on BEAM (akin to Node or JVM).
1. To execute compiled Elixir code and copy it into a Docker volume review [elixir-docker](./elixir_docker).
1. To quickly execute Elixir use an online IDE like [jdoodle](https://www.jdoodle.com/execute-elixir-online/) or [repl.it](https://repl.it/repls).

Resources: 

1. https://elixir-lang.org/
1. https://www.tutorialspoint.com/elixir/elixir_loops.htm
1. https://elixirschool.com/en/lessons/basics/functions/

## Mix

Elixir uses a build tool called Mix to compile, package, and manage Elixir programs.

1. It's similar to webpack and NPM rolled into one.
1. Or, Gradle and Maven.

An example Mix layout created via:

```Bash
$ mix new mix_example_1 --module MixExample1
$ docker container run --rm -v $PWD:/data -w /data elixir mix new mix_example_1
```

is available in [elixir-mix](./elixir-mix).

Resources:

1. https://hex.pm
1. https://hexdocs.pm/mix/Mix.html