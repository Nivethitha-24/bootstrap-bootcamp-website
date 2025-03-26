#!/bin/bash

# Stop and remove any running container named "bootstrap-bootcamp"
docker stop bootstrap-bootcamp 2>/dev/null
docker rm bootstrap-bootcamp 2>/dev/null

# Build the Docker image
docker build -t bootstrap-bootcamp .

# Run the container on port 90
docker run -itd --name bootstrap-bootcamp -p 90:80 bootstrap-bootcamp
