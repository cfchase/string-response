#!/usr/bin/env bash

IMAGE_REPOSITORY=${IMAGE_REPOSITORY:-quay.io/cfchase/string-response:latest}

echo "Pushing ${IMAGE_REPOSITORY}"
docker push ${IMAGE_REPOSITORY}
