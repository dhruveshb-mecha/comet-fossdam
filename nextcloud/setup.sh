#!/bin/bash
echo "Starting Nextcloud..."
podman network create demo-net 2>/dev/null || true
podman compose up -d
