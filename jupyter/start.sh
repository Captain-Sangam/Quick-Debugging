#!/bin/bash

# Exit if anything fails

# Creating the mount directory if not exists
mkdir -p ~/docker_mount/jupyter/home/
mkdir -p ~/docker_mount/jupyter/data/

# Stating Jupyter
docker-compose up -d

# Checking with Jupyter is up
docker-compose ps

# Sharing the Jupyter URL
echo ""
echo "If everything went well, Jupyter should be running at http://localhost:3002/"
echo 'To get the token to login, run => sudo docker logs Jupyter | grep "token"'
echo ""