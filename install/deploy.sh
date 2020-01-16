#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

PROJECT=${PROJECT:-scavenger}
IMAGE_REPOSITORY=${SERVER_IMAGE_REPOSITORY:-quay.io/cfchase/string-response:latest}
REPLICAS=${SERVER_REPLICAS:-1}
LOG_LEVEL=${LOG_LEVEL:-info}

oc project ${PROJECT}
echo "Deploying ${IMAGE_REPOSITORY}"

oc process -f "${DIR}/server.yml" \
  -p IMAGE_REPOSITORY=${IMAGE_REPOSITORY} \
  -p ROUTE_NAME=${ROUTE_NAME} \
  -p RESPONSE_STRING=${RESPONSE_STRING} \
  -p REPLICAS=${REPLICAS} \
  -p LOG_LEVEL=${LOG_LEVEL} \
  | oc create -f -
