#!/usr/bin/env bash
set -euo pipefail

log() { printf '[setup] %s\n' "$1"; }

log "Installing system dependencies"
sudo apt-get update -qq
sudo apt-get install -y -qq ca-certificates curl >/dev/null

log "Removing unwanted extensions"
code --uninstall-extension github.vscode-pull-request-github --force 2>/dev/null || true
code --uninstall-extension github.github-vscode-theme --force 2>/dev/null || true

log "Lawvable codespace setup complete"
