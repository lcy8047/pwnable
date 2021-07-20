#!/bin/bash
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -c aes128-cbc 172.16.5.6 -l $1

