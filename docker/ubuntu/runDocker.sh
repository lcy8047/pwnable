#!/bin/bash

# set mount dir path
PWNDIR=/Users/ichang-yul/Desktop/pwnable

# docker run
echo === docker run ===
echo -n "Input tag ex) pwn0.1 : "
read TAG
#docker run --rm -it -d -v $PWNDIR:/pwnable ubuntu20:$TAG /bin/bash
docker run --rm -it -v $PWNDIR:/pwnable ubuntu20:$TAG /bin/bash


############################################
# no more need copy vimrc (it is in image) #
############################################

# get docker container id
#export CONTAINERID=$(docker ps -a | grep pwn | awk '{print $1}')
#echo "docker ID=$CONTAINERID"

# copy .vimrc to root home dir 
#echo === copy .vimrc ===
#docker cp ./etc/.vimrc $(echo -en $CONTAINERID):/root/.vimrc

# attach docker
#echo === attach container ===
#docker attach $(echo -en $CONTAINERID)
