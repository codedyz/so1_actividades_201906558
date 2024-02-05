#!/bin/bash
GITHUB_USER="codedyz"

API_URL="https://api.github.com/users/$GITHUB_USER"
USER_DATA=$(curl -s "$API_URL")

USER_NAME=$(echo "$USER_DATA" | jq -r '.login')
USER_ID=$(echo "$USER_DATA" | jq -r '.id')
USER_CREATED=$(echo "$USER_DATA" | jq -r '.created_at')

LOG_DIR="/tmp/$(date +%Y-%m-%d-%H:%M)"
mkdir -p "$LOG_DIR"

echo "Hola $USER_NAME. User ID:$USER_ID. Cuenta fue creada el: $USER_CREATED." >> "$LOG_DIR/saludos.log"
