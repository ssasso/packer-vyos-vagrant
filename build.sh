#!/bin/bash

cksum=$(sha1sum vyos-rolling-latest.iso | awk '{print $1}')

cat vyos.json | jq --arg cksum "$cksum" '.builders[0] += { "iso_checksum": $cksum }' > vyos-build.json

packer build vyos-build.json
