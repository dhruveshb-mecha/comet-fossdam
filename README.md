# Comet FOSSDAM Demo

This repository contains a demo setup for Immich, Jellyfin, and Nextcloud, orchestrated by Podman Compose.

## Prerequisites

- Podman
- podman-compose

## Structure

- **immich**: Photo and video backup solution.
- **jellyfin**: Media system.
- **nextcloud**: Productivity platform.
- **uptime-kuma**: Monitoring tool.
- **homeassistant**: Home automation platform.
- **filebrowser**: Web-based file manager.
- **memos**: Privacy-first, lightweight note-taking service.

## Setup

1. Run the setup script:
   ```bash
   ```
   ./setup-all.sh
   ```

2. **Running Individual Services** (Optional):
   If you only want to run a specific application (e.g., just Immich), navigate to its directory and run the setup script:
   ```bash
   cd immich
   ./setup.sh
   ```
   (Replace `immich` with `jellyfin` or `nextcloud` as needed).

3. Access the services:
   - **Immich**: [http://localhost:2283](http://localhost:2283)
   - **Jellyfin**: [http://localhost:8096](http://localhost:8096)
   - **Nextcloud**: [http://localhost:8080](http://localhost:8080)
   - **Uptime Kuma**: [http://localhost:3001](http://localhost:3001)
   - **Home Assistant**: [http://localhost:8123](http://localhost:8123)
   - **FileBrowser**: [http://localhost:8081](http://localhost:8081)
   - **Memos**: [http://localhost:5230](http://localhost:5230)

## Configuration

- **Credentials**:
  - Database User: `mecha`
  - Database Password: `comet`
- **Network**: All containers are attached to the `demo-net` network.

## Notes

- Ensure ports 2283, 8096, and 8080 are free.
- Data is persisted in each directory under volumes (e.g., `./library`, `./postgres`, `./config`, `./media`).
