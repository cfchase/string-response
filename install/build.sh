#!/bin/bash

IMAGE_REPOSITORY=${IMAGE_REPOSITORY:-quay.io/cfchase/string-response:latest}
SOURCE_REPOSITORY_URL=${SOURCE_REPOSITORY_URL:-https://github.com/cfchase/string-response.git}
SOURCE_REPOSITORY_REF=${SOURCE_REPOSITORY_REF:-master}

echo "Building ${IMAGE_REPOSITORY} from ${SOURCE_REPOSITORY_URL} on ${SOURCE_REPOSITORY_REF}"

s2i build ${SOURCE_REPOSITORY_URL} --ref ${SOURCE_REPOSITORY_REF} --context-dir /server docker.io/nodeshift/centos7-s2i-nodejs:12.x ${IMAGE_REPOSITORY}
