#!/bin/bash

echo "Starting JioTV Go..."

# Prevent crash loop
while true
do
  ./jiotv_go serve --skip-update-check
  echo "Server crashed. Restarting in 5 seconds..."
  sleep 5
done