#!/usr/bin/env bash

# Credit to: http://stackoverflow.com/a/36190462/2689923

# Define what we are running here.
IMAGE=$1
COMMAND=/bin/bash

XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth.$USER.$$
touch $XAUTH
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# This sets the port access to 8888
# The file storage (e.g., accessible from jupyter) to Documents/notebooks
# This also sets up the display (for e.g., popouts if they happen (?))
nvidia-docker run \
    -it \
    --privileged \
    --rm \
    --workdir="/workspace" \
    -p 8888:8888 \
	 -v $HOME:/workspace \
    --net=host \
	 -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker \
	 --security-opt seccomp=unconfined \
    -v $XSOCK:$XSOCK \
    -v $XAUTH:$XAUTH \
    -e XAUTHORITY=$XAUTH \
    -e DISPLAY=$DISPLAY \
    $IMAGE


rm -f $XAUTH
