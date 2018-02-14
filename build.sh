#!/bin/bash
# Code  by Jioh L. Jung<ziozzang@gmail.com>

BIN_NAME="${PWD##*/}"
BUILD_DIRS=`pwd`
GO_VERSION=${GO_VERSION:-latest}

docker run -it --rm \
  -v ${BUILD_DIRS}:/usr/src/${BIN_NAME} \
  -w /usr/src/${BIN_NAME} \
  golang:${GO_VERSION} bash make

