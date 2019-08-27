#!/bin/bash
set -eu

curl -X POST -H "Content-Type: application/json" --data "$DATA" ${DISCORD_WEBHOOK/$PLACEHOLDER_KEY/$PLACEHOLDER_VALUE}