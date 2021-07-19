#!/bin/sh

channelid=$(curl -s -u admin:admin -k -X GET "https://localhost:8443/api/channels" -H  "accept: application/json" |  jq -r '.list.channel | select(.name == "Convert HL7 to FHIR Patient - Example 1") | .id')

if [[ -z "$channelid" ]]; then
  echo "❌ The channel was not found"
  exit 1
fi

curl -k -u admin:admin -X GET "https://localhost:8443/api/channels/$channelid" -H  "accept: application/json" > example_hl7_to_fhir_channel.json
