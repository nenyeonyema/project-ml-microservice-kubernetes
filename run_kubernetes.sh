#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nenyeonyema/microserviceproject:v1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run microserviceproject \
    --image=nenyeonyema/microserviceproject:v1 \ 
    --port=80 --labels app=microserviceproject


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward microserviceproject 8000:80

