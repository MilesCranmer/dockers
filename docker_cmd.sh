#!/bin/bash
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/workspace "$@"
