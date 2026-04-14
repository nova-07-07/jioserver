#!/bin/bash

echo "Starting JioTV Go..."

# If Render gives PORT use it, else 5001
PORT=${PORT:-5001}

# Start server in loop (prevent exit)
while true
do
  ./jiotv_go serve --port $PORT --skip-update-check
  echo "Crashed. Restarting in 5 sec..."
  sleep 5
done