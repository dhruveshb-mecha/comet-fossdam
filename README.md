# Comet FOSSDAM Demo

This repository contains a demo setup for Immich, Jellyfin, and Nextcloud, orchestrated by Podman Compose.

## Prerequisites

- Podman
- podman-compose

## Structure

- **immich**: Photo and video backup solution.
- **jellyfin**: Media system.
- **nextcloud**: Productivity platform.

## Setup

1. Run the setup script:
   ```bash
   ./setup-all.sh
   ```

2. Access the services:
   - **Immich**: [http://localhost:2283](http://localhost:2283)
   - **Jellyfin**: [http://localhost:8096](http://localhost:8096)
   - **Nextcloud**: [http://localhost:8080](http://localhost:8080)

## Configuration

- **Credentials**:
  - Database User: `mecha`
  - Database Password: `comet`
- **Network**: All containers are attached to the `demo-net` network.

## Notes

- Ensure ports 2283, 8096, and 8080 are free.
- Data is persisted in each directory under volumes (e.g., `./library`, `./postgres`, `./config`, `./media`).
