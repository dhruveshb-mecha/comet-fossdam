#!/bin/bash
echo "Stopping all services..."

export DOCKER_HOST=unix:///run/user/$(id -u)/podman/podman.sock

cd memos && podman compose down && cd ..
cd filebrowser && podman compose down && cd ..
cd homeassistant && podman compose down && cd ..
cd uptime-kuma && podman compose down && cd ..
cd nextcloud && podman compose down && cd ..
cd jellyfin && podman compose down && cd ..
cd immich && podman compose down && cd ..

echo "All services stopped."
