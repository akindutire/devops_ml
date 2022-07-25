#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t uda:ml_ops .

# Step 2: 
# List docker images
docker image ls

#Step 2.5:
#Remove existing container
docker rm -f ml_ops

# Step 3: 
# Run flask app
docker run -p 8000:80 --name ml_ops uda:ml_ops