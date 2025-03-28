#!/bin/bash
# Uninstall script for FSMonitor
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling FSMonitor..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping FSMonitor if running..."
pkill -f "FSMonitor" 2>/dev/null || true

# Remove /Applications/FSMonitor.app
echo "Removing /Applications/FSMonitor.app..."
if [ -d "/Applications/FSMonitor.app" ]; then
    rm -rf "/Applications/FSMonitor.app" 2>/dev/null || true
elif [ -f "/Applications/FSMonitor.app" ]; then
    rm -f "/Applications/FSMonitor.app" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
