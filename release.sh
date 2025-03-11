#!/bin/bash

TOKEN=$1

if [[ -z ${TOKEN} ]]; then
  echo "Please provide a github token"
  exit 1
fi

rm -r .cr-release-packages/
cr package charts/pokertool/
cr upload -o alliander-opensource -r pokertool-chart --push --generate-release-notes --token --commit "$(git rev-parse HEAD)" "$TOKEN"
cr index  -o alliander-opensource -r pokertool-chart --push --index-path index.yaml --token "$TOKEN"
