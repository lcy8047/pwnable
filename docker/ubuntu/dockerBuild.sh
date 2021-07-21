#!/bin/bash

echo "docker build script : tag = ubuntu20:[tag]"
# current version image tag print
echo -en "now version : "
CURVER=$(docker images | grep pwn |awk '{print $2}')
echo $CURVER
if [ $# == 1 ]; then
	if [ ! -f ./Dockerfile ]; then
		echo "Dockerfile is not Found"
		exit 1
	fi
	echo "Build Docker image?"
	read INPUT
	docker build --tag ubuntu20:$1 .
else
	echo -en "wrong tag : "
	echo $1
	echo "usage : $0 [tag]"
	echo "ex) $0 pwn0.1"
fi
