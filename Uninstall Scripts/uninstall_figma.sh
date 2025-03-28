#!/bin/bash
# Uninstall script for Figma
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Figma..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Figma if running..."
pkill -f "Figma" 2>/dev/null || true

# Remove /Applications/Figma.app
echo "Removing /Applications/Figma.app..."
if [ -d "/Applications/Figma.app" ]; then
    rm -rf "/Applications/Figma.app" 2>/dev/null || true
elif [ -f "/Applications/Figma.app" ]; then
    rm -f "/Applications/Figma.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
