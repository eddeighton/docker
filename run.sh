#!/bin/bash

set -euxo pipefail

# 
IMAGE=mega:latest
NAME=mega

# now start the image with named volumes used for src, res and work
docker run --detach --rm -ti --tty \
    -v /archive:/archive \
    -v /cache:/cache \
    -v mega:/src \
    -e DISPLAY \
    -e TMUX_SESSION_NAME=${NAME} \
    -e DOCKER_IMAGE=${IMAGE} \
    --hostname mega \
    --network=host \
    --privileged \
    --user foobar \
    --name ${NAME} \
    --cap-add=SYS_PTRACE \
    ${IMAGE} \
    /bin/bash

