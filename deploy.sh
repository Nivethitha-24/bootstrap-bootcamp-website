#!/bin/bash

echo "Starting deployment process..."

# Grant executable permission to build.sh
chmod +x build.sh

# Run build script
./build.sh

# Log in to Docker Hub (Ensure credentials are securely stored)
echo "Logging into Docker Hub..."
docker login -u nivethitha24 -p nivethitha

# Tag and push the image to Docker Hub
docker tag bootstrap-bootcamp nivethitha24/bootstrap-bootcamp
docker push nivethitha24/bootstrap-bootcamp

echo "Deployment completed successfully!"
