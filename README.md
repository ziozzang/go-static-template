# go-static-template
Golang Static Binary build with docker templates

# TL;DR

* This template generate linux base static binary.
* you can use any golang project with this build templates.
* This scripts are trying to download external github library.

# Pre-requisit
* docker installed.
* any linux or mac osx with bash installed.

# how to use
1. Just copy 'make' and 'build.sh' to any golang project
2. run "build.sh".
3. you can get static built binary.

* if you want to build specific golang version use like this

```
GO_VERSION=1.8 ./build.sh
```

* defulat golang version is latest. (docker version of golang tag)
    * you can check docker tags [here](https://hub.docker.com/_/golang/)

# Static binary
* you can run binary with any linux distro. like alpine, debian, ubuntu, redhat or some.

# Disclaimer
* This script is for my own purpose. tested on product but no warrenty.
* This script is for generated AMD64/Linux binary.if you want to build any elas architecture, you can modify script!

