#!/bin/bash
# Uninstall script for PDF Expert
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling PDF Expert..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping PDF Expert if running..."
pkill -f "PDF Expert" 2>/dev/null || true

# Remove /Applications/PDF Expert.app
echo "Removing /Applications/PDF Expert.app..."
if [ -d "/Applications/PDF Expert.app" ]; then
    rm -rf "/Applications/PDF Expert.app" 2>/dev/null || true
elif [ -f "/Applications/PDF Expert.app" ]; then
    rm -f "/Applications/PDF Expert.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
