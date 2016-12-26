#!/bin/sh

#build the builder
docker build -t go-buildbox ./

#run the builder, that will build a service container with just the compiled binary in a scratch environment
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -ti go-buildbox

#run the service container
docker run -p :8080:8080 wrighty/helloworld
