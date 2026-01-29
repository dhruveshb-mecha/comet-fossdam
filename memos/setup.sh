#!/bin/bash
echo "Starting Memos..."

# Ensure Podman socket is running for docker-compose compatibility
if ! systemctl --user is-active --quiet podman.socket; then
    echo "Starting Podman socket..."
    systemctl --user start podman.socket
fi

export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

podman network create demo-net 2>/dev/null || true
podman compose up -d
