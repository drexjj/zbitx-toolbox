#!/bin/bash

set -e

echo "Installing ezdata..."

# Detect current user and home directory
USER_HOME=$(eval echo ~${SUDO_USER:-$USER})
DESKTOP_DIR="$USER_HOME/Desktop"

# Ensure Desktop exists
mkdir -p "$DESKTOP_DIR"

# Download ezdata
echo "Downloading ezdata..."
wget -O "$DESKTOP_DIR/ezdata" https://raw.githubusercontent.com/drexjj/zbitx-toolbox/main/apps/ezdata

# Make executable
chmod +x "$DESKTOP_DIR/ezdata"

"$DESKTOP_DIR/ezdata"