#!/bin/sh

curl -s -u admin:admin -k -X POST "https://localhost:8443/api/channels" -H  "accept: application/json" -H  "Content-Type: application/xml" -d @./saved-channel.xml | jq -e .boolean
