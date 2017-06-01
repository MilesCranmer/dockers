#!/bin/bash
docker run --rm -it --user="$(id -u):$(id -g)" --net=none -v "$PWD":/workspace mcranmer/dockers:$@
