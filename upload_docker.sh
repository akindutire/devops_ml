#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=zil0/uda:ml_ops

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
DOCKER_USERNAME="zil0"
DOCKER_PASSWORD="grassroot"

docker login -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
docker tag uda:ml_ops ${dockerpath}
# Step 3:
# Push image to a docker repository
docker push ${dockerpath}