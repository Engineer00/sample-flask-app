#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Define variables
IMAGE_NAME="linux0092/sample-flask-app"
TAG="1.0"

# Function to check if Docker is running
check_docker() {
    if ! docker info >/dev/null 2>&1; then
        echo "Error: Docker is not running. Please start Docker and try again."
        exit 1
    fi
}

# Function to build Docker image
build_image() {
    echo "Building Docker image..."
    docker build -t ${IMAGE_NAME}:${TAG} .
    if [ $? -eq 0 ]; then
        echo "Docker image built successfully."
    else
        echo "Error: Failed to build Docker image."
        exit 1
    fi
}

# Function to push Docker image
push_image() {
    echo "Pushing Docker image to Docker Hub..."
    docker push ${IMAGE_NAME}:${TAG}
    if [ $? -eq 0 ]; then
        echo "Docker image pushed successfully."
    else
        echo "Error: Failed to push Docker image."
        exit 1
    fi
}

# Main execution
main() {
    check_docker
    build_image
    push_image
    echo "Build and push process completed successfully."
}

# Run the main function
main