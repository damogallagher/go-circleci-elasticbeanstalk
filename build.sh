#!/usr/bin/env bash

# Install dependencies.
go get ./...

# Build app
# go build ./ -o bin/application

echo "Hello world"
ls -latr


# build command
#go build application.go -o bin/application 
go build application.go

mkdir bin
mv application bin/