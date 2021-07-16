#!/bin/sh

curl -s -u admin:admin -k -X POST "https://localhost:8443/api/channels" -H  "accept: application/json" -H  "Content-Type: application/json" -d @./example_hl7_to_fhir_channel.json | jq -e .boolean
