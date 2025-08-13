#!/bin/bash

echo "Starting Tmate..."
tmate -F &
sleep 5

echo "Tmate session info:"
tmate display -p '#{tmate_ssh}'
tmate display -p '#{tmate_web}'

# Keep container alive
tail -f /dev/null
