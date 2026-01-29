#!/bin/bash
echo "Starting FileBrowser..."

# Ensure Podman socket is running for docker-compose compatibility
if ! systemctl --user is-active --quiet podman.socket; then
    echo "Starting Podman socket..."
    systemctl --user start podman.socket
fi

export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

# Create DB file if it doesn't exist to prevent directory creation
if [ ! -f filebrowser.db ]; then
    touch filebrowser.db
fi

# Create root dir if it doesn't exist
if [ ! -d root ]; then
    mkdir root
fi

podman network create demo-net 2>/dev/null || true
podman compose up -d
