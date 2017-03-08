#!/usr/bin/env bash

# Credit to: http://stackoverflow.com/a/36190462/2689923

# Define what we are running here.
CONTAINER=$1
COMMAND=/bin/bash

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth.$USER.$$
touch $XAUTH
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# This sets the port access to 8888
# The file storage (e.g., accessible from jupyter) to Documents/notebooks
# This also sets up the display (for e.g., popouts if they happen (?))
docker run \
    -it \
    --rm \
    --workdir="/workspace" \
    -p 8899:8899 \
    -v $2:/workspace \
    -v $XSOCK:$XSOCK \
    -v $XAUTH:$XAUTH \
    -e XAUTHORITY=$XAUTH \
    -e DISPLAY=unix$DISPLAY \
    -e uid=$(id -u) \
    -e gid=$(id -g) \
    $CONTAINER \
    $COMMAND

rm -f $XAUTH
