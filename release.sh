#!/bin/bash

TOKEN=$1

helm repo add bitnami https://charts.bitnami.com/bitnami
cr upload -o alliander-opensource -r pokertool-chart --push --generate-release-notes --token "$TOKEN"
cr index  -o alliander-opensource -r pokertool-chart --push --index-path index.yaml --token "$TOKEN"
