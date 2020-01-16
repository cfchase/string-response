#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

oc project ${PROJECT}

oc process -f ${DIR}/server.yml | oc delete -f -
