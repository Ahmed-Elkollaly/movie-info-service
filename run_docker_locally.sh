#!/usr/bin/env bash


# Step 1:
# Build image and add a descriptive tag
docker build -t movie-info-service .

# Step 2:
# List docker images
docker image ls

# Step 3:
# Run nodejs app
docker run -p 8082:8082 -it --rm movie-info-service
