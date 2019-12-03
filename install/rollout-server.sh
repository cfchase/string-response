#!/usr/bin/env bash

echo "Rolling out new version of string-response"
oc rollout latest dc/string-response
