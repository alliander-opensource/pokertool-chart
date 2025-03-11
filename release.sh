#!/bin/bash

TOKEN=$1

cr upload -o alliander-opensource -r pokertool-chart --push --generate-release-notes --token "$TOKEN"
cr index  -o alliander-opensource -r pokertool-chart --push --index-path index.yaml --token "$TOKEN"
