#!/bin/bash

set -e

VERSION=$1

PACKAGE_JSON_URL=$(curl -s https://launchermeta.mojang.com/mc/game/version_manifest.json | jq --arg VERSION $VERSION -r '.versions[] | select(.id==$VERSION) | .url')
SERVER_JAR_URL=$(curl -s  $PACKAGE_JSON_URL | jq -r '.downloads.server.url')
curl -o /minecraft/bin/server.jar $SERVER_JAR_URL

