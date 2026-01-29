#!/bin/bash
echo "Initializing Demo Repo..."

# Ensure Podman socket is running for docker-compose compatibility
if ! systemctl --user is-active --quiet podman.socket; then
    echo "Starting Podman socket..."
    systemctl --user start podman.socket
fi

export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

# Create shared network
echo "Creating shared network 'demo-net'..."
podman network create demo-net 2>/dev/null || true

# Start Immich
echo "------------------------------------------------"
cd immich
bash setup.sh
cd ..

# Start Jellyfin
echo "------------------------------------------------"
cd jellyfin
bash setup.sh
cd ..

# Start Nextcloud
echo "------------------------------------------------"
cd nextcloud
bash setup.sh
cd ..

# Start Uptime Kuma
echo "------------------------------------------------"
cd uptime-kuma
bash setup.sh
cd ..

# Start Home Assistant
echo "------------------------------------------------"
cd homeassistant
bash setup.sh
cd ..

echo "------------------------------------------------"
echo "All services started."
echo "Access them at:"
echo "  Immich:          http://localhost:2283"
echo "  Jellyfin:        http://localhost:8096"
echo "  Nextcloud:       http://localhost:8080"
echo "  Uptime Kuma:     http://localhost:3001"
echo "  Home Assistant:  http://localhost:8123"
