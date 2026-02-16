#!/bin/bash

echo "Pulling latest image..."
docker pull ammarjamil3/resume-backend:latest

echo "Stopping old container..."
docker stop resume-backend || true
docker rm resume-backend || true

echo "Starting new container..."
docker run -d \
  --name resume-backend \
  -p 4000:4000 \
  --env-file .env \
  ammarjamil3/resume-backend:latest

echo "Deployment complete"
