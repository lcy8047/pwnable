#!/bin/bash
PWNDIR=/Users/ichang-yul/Desktop/pwnable/pwnable
docker run --rm -it -v $PWNDIR:/pwnable ubuntu20:pwn0.1 /bin/bash
