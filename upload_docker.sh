#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="2121994/movie-info-service"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=2121994

#To tag a local image id into remote docker hub repository
docker tag 6fcfa32af63f 2121994/movie-info-service

# Step 3:
# Push image to a docker repository
docker push 2121994/movie-info-service
