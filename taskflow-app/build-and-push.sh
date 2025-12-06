#!/bin/bash

# Variables
REGISTRY="ghcr.io/yourname"
TAG="latest"

echo "🔨 Building TaskFlow images..."

# Build Frontend
echo "Building Frontend..."
cd frontend
docker build -t $REGISTRY/taskflow-frontend:$TAG .
cd ..

# Build Backend
echo "Building Backend..."
cd backend
docker build -t $REGISTRY/taskflow-backend:$TAG .
cd ..

# Build Worker
echo "Building Worker..."
cd worker
docker build -t $REGISTRY/taskflow-worker:$TAG .
cd ..

echo "✅ Images built successfully!"

# Login to registry
echo "🔐 Logging to registry..."
echo $GHCR_TOKEN | docker login ghcr.io -u yourname --password-stdin

# Push images
echo "📤 Pushing images to registry..."
docker push $REGISTRY/taskflow-frontend:$TAG
docker push $REGISTRY/taskflow-backend:$TAG
docker push $REGISTRY/taskflow-worker:$TAG

echo "🎉 All images pushed successfully!"
