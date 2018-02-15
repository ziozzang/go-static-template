# go-static-template
Golang Static Binary build script templates, with docker version of golang.

# TL;DR
* This templates to generate linux base static binary.
* You can use any golang project with this build templates.
* This scripts are automatically download external library at github.

# Pre-requisit
* docker installed.(+internet connected to download container images and external library)
* any linux or mac osx with bash installed.

# how to use
1. Just copy 'make' and 'build.sh' to any golang project. or just run command
```
curl https://raw.githubusercontent.com/ziozzang/go-static-template/master/install | bash
```

2. run "build.sh".
3. you can get static built binary.

* if you want to build specific golang version use like this

```
GO_VERSION=1.8 ./build.sh
```

* if you want to set specific binary name, use like this

```
BIN_NAME=foo ./build.sh
```

* defulat golang version is latest. (docker version of golang tag)
    * you can check docker tags [here](https://hub.docker.com/_/golang/)

# Static binary
* you can run binary with any linux distro. like alpine, debian, ubuntu, redhat or some.

# Disclaimer
* This script is for my own purpose. tested on product but no warrenty.
* This script is for generated AMD64/Linux binary.if you want to build any elas architecture, you can modify script!

