#!/bin/bash
curl -X POST -H "Content-Type: application/json" --data "${DATA/$PLACEHOLDER_KEY/$PLACEHOLDER_VALUE}" $DISCORD_WEBHOOK