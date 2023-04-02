#!/bin/bash

# Exit if anything fails

# Creating the mount directory if not exists
mkdir -p ~/docker_mount/zeppelin/home/
mkdir -p ~/docker_mount/zeppelin/data/

# Stating Zeppelin
docker-compose up -d

# Checking with Zeppelin is up
docker-compose ps

# Sharing the Zeppelin URL
echo ""
echo "If everything went well, Zeppelin should be running at http://localhost:3003/"
echo 'To get the token to login, run => sudo docker logs zeppelin | grep "token"'
echo ""