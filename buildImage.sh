#!/bin/bash
docker rm -f multichain1 multichain2
docker build -t multichain . && \
docker run --name multichain1 -d -i -t multichain
docker run --name multichain2 -d --link multichain1:multichain1 -i -t multichain
