#!/bin/bash
# Uninstall script for Asana
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Asana..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Asana if running..."
pkill -f "Asana" 2>/dev/null || true

# Remove /Applications/Asana.app
echo "Removing /Applications/Asana.app..."
if [ -d "/Applications/Asana.app" ]; then
    rm -rf "/Applications/Asana.app" 2>/dev/null || true
elif [ -f "/Applications/Asana.app" ]; then
    rm -f "/Applications/Asana.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
