#!/bin/bash
echo "Starting Immich..."
# Create the network if it doesn't exist
podman network create demo-net 2>/dev/null || true
podman compose up -d
