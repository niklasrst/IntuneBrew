#!/bin/bash
# Uninstall script for Santa
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Santa..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Santa if running..."
pkill -f "Santa" 2>/dev/null || true

# Unload service com.northpolesec.santa
echo "Unloading service com.northpolesec.santa..."
launchctl unload -w /Library/LaunchAgents/com.northpolesec.santa.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.northpolesec.santa.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.northpolesec.santa.plist 2>/dev/null || true

# Unload service com.northpolesec.santa.bundleservice
echo "Unloading service com.northpolesec.santa.bundleservice..."
launchctl unload -w /Library/LaunchAgents/com.northpolesec.santa.bundleservice.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.northpolesec.santa.bundleservice.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.northpolesec.santa.bundleservice.plist 2>/dev/null || true

# Unload service com.northpolesec.santa.metricservice
echo "Unloading service com.northpolesec.santa.metricservice..."
launchctl unload -w /Library/LaunchAgents/com.northpolesec.santa.metricservice.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.northpolesec.santa.metricservice.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.northpolesec.santa.metricservice.plist 2>/dev/null || true

# Unload service com.northpolesec.santa.syncservice
echo "Unloading service com.northpolesec.santa.syncservice..."
launchctl unload -w /Library/LaunchAgents/com.northpolesec.santa.syncservice.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.northpolesec.santa.syncservice.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.northpolesec.santa.syncservice.plist 2>/dev/null || true

# Unload service com.northpolesec.santad
echo "Unloading service com.northpolesec.santad..."
launchctl unload -w /Library/LaunchAgents/com.northpolesec.santad.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.northpolesec.santad.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.northpolesec.santad.plist 2>/dev/null || true

echo "Uninstallation complete!"
exit 0
