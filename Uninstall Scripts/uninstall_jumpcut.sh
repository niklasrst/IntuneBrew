#!/bin/bash
# Uninstall script for Jumpcut
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Jumpcut..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Jumpcut if running..."
pkill -f "Jumpcut" 2>/dev/null || true

# Remove /Applications/Jumpcut.app
echo "Removing /Applications/Jumpcut.app..."
if [ -d "/Applications/Jumpcut.app" ]; then
    rm -rf "/Applications/Jumpcut.app" 2>/dev/null || true
elif [ -f "/Applications/Jumpcut.app" ]; then
    rm -f "/Applications/Jumpcut.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
