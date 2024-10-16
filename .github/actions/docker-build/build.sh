#!/bin/bash

# Log in to Docker registry
echo "$PASSWORD" | docker login "$REGISTRY" -u "$USERNAME" --password-stdin

# Set the image tag based on the environment
if [[ "$ENVIRONMENT" == "production" ]]; then
  IMAGE_TAG="$REGISTRY/$IMAGE_NAME-production:$GITHUB_SHA"
elif [[ "$ENVIRONMENT" == "staging" ]]; then
  IMAGE_TAG="$REGISTRY/$IMAGE_NAME-staging:$GITHUB_SHA"
else
  IMAGE_TAG="$REGISTRY/$IMAGE_NAME-development:$GITHUB_SHA"
fi

# Build the Docker image
docker build -t "$IMAGE_TAG" .

# Push the image to the registry
docker push "$IMAGE_TAG"

# Output the image tag for downstream steps
echo "image_tag=$IMAGE_TAG" >> "$GITHUB_OUTPUT"
