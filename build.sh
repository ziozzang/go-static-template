#!/bin/bash
# Code  by Jioh L. Jung<ziozzang@gmail.com>

BIN_NAME="${BIN_NAME:-${PWD##*/}}"
BUILD_DIRS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GO_VERSION=${GO_VERSION:-latest}

echo ">> Working Directory detected: '$BUILD_DIRS'"
echo ">> Target Binaryname: '$BIN_NAME'"
echo ">> Running Docker images..."
docker run -it --rm \
  -v ${BUILD_DIRS}/:/usr/src/${BIN_NAME} \
  -v ${BUILD_DIRS}/.pkgs/:/go/pkg \
  -w /usr/src/${BIN_NAME} \
  golang:${GO_VERSION} bash make

