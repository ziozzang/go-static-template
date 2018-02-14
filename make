#!/bin/bash
# Code  by Jioh L. Jung<ziozzang@gmail.com>
echo "==========================================="
echo ">> Golang Static Binary Build Scripts..."
echo ">> - by Jioh L. Jung<ziozzang@gmail.com>"
echo "==========================================="

# Go get packages
echo ">> Detected external packages..."
grep -o -i "github.com/[^\"\']*" *.go
grep -o -i "github.com/[^\"\']*" *.go | xargs go get -v {} 2> /dev/null
echo ">> external package download done..."

# Make Static
echo ">> Starting Build...."
CGO_ENABLED=0 GOOS=linux go build -v -a -ldflags '-extldflags "-static"' .
echo ">> Build done..."
