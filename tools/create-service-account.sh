#!/bin/bash

# Create the account
ID=$(curl  -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' -d '{"kind":"service", "name":"service", "uuid":"service"}' 'http://192.168.11.212:8080/v1/accounts' | jq -r '.id')

# Create api keys for the account
curl  -X POST -H 'Accept: application/json' -H 'Content-Type: application/json' -d "{\"accountId\":\"$ID\", \"name\":\"service\", \"publicValue\":\"service\", \"secretValue\":\"servicepass\"}" 'http://192.168.11.212:8080/v1/apikeys'
