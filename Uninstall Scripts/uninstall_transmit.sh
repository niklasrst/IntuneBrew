#!/bin/bash
# Uninstall script for Transmit
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Transmit..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Transmit if running..."
pkill -f "Transmit" 2>/dev/null || true

# Remove /Applications/Transmit.app
echo "Removing /Applications/Transmit.app..."
if [ -d "/Applications/Transmit.app" ]; then
    rm -rf "/Applications/Transmit.app" 2>/dev/null || true
elif [ -f "/Applications/Transmit.app" ]; then
    rm -f "/Applications/Transmit.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
