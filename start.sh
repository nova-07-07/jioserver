#!/bin/bash

echo "Starting JioTV Go..."

PORT=${PORT:-5001}

while true
do
  ./jiotv_go --skip-update-check serve --port $PORT --public
  echo "Crashed. Restarting in 5 sec..."
  sleep 5
done