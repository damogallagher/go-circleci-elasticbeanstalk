#!/usr/bin/env bash

# Install dependencies.
go get ./...

# Build app
# go build ./ -o bin/application

echo "Pre list dir"
ls -latr
echo "Post list dir"

# build command
#go build application.go -o bin/application 

echo "Pre build application.go"
rm -rf go.mod
go get -v -t -d ./...
go build application.go
mkdir bin
ls -latr
ls -latr bin/
echo "Post build application.go"



mv application bin/
echo "Pre list bin dir"
ls -latr bin/
echo "Post list bin dir"