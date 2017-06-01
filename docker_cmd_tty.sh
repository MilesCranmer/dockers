#!/bin/bash
docker run --rm -it --net=none -v "$PWD":/workspace mcranmer/dockers:$@
