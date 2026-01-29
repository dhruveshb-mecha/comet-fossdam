#!/bin/bash
echo "Stopping all services..."

export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

cd nextcloud && podman compose down && cd ..
cd jellyfin && podman compose down && cd ..
cd immich && podman compose down && cd ..

echo "All services stopped."
