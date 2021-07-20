#!/bin/bash

# set mount dir path
PWNDIR=/Users/ichang-yul/Desktop/pwnable

# docker run
echo === docker run ===
docker run --rm -it -d -v $PWNDIR:/pwnable ubuntu20:pwn0.1 /bin/bash

# get docker container id
export CONTAINERID=$(docker ps -a | grep pwn | awk '{print $1}')
echo "docker ID=$CONTAINERID"

# copy .vimrc to root home dir 
echo === copy .vimrc ===
docker cp ./etc/.vimrc $(echo -en $CONTAINERID):/root/.vimrc

# attach docker
echo === attach container ===
docker attach $(echo -en $CONTAINERID)
