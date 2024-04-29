#!/bin/bash

wget -c -O vyos-rolling-latest.iso $(wget -qO - https://raw.githubusercontent.com/vyos/vyos-rolling-nightly-builds/main/version.json | jq -r '.[].url')

cksum=$(sha1sum vyos-rolling-latest.iso | awk '{print $1}')

cat vyos.json | jq --arg cksum "$cksum" '.builders[0] += { "iso_checksum": $cksum }' > vyos-build.json

packer build vyos-build.json
