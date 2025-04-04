#!/bin/bash
# Uninstall script for Bartender
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Bartender..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Bartender if running..."
pkill -f "Bartender" 2>/dev/null || true

# Unload service com.surteesstudios.Bartender.BartenderInstallHelper
echo "Unloading service com.surteesstudios.Bartender.BartenderInstallHelper..."
launchctl unload -w /Library/LaunchAgents/com.surteesstudios.Bartender.BartenderInstallHelper.plist 2>/dev/null || true
launchctl unload -w /Library/LaunchDaemons/com.surteesstudios.Bartender.BartenderInstallHelper.plist 2>/dev/null || true
launchctl unload -w ~/Library/LaunchAgents/com.surteesstudios.Bartender.BartenderInstallHelper.plist 2>/dev/null || true

# Kill application with bundle ID com.surteesstudios.Bartender if running
echo "Stopping application with bundle ID com.surteesstudios.Bartender if running..."
killall -9 "com.surteesstudios.Bartender" 2>/dev/null || true

# Remove /Applications/Bartender 5.app
echo "Removing /Applications/Bartender 5.app..."
if [ -d "/Applications/Bartender 5.app" ]; then
    rm -rf "/Applications/Bartender 5.app" 2>/dev/null || true
elif [ -f "/Applications/Bartender 5.app" ]; then
    rm -f "/Applications/Bartender 5.app" 2>/dev/null || true
fi

# Remove $HOME/Library/Caches/com.surteesstudios.Bartender
echo "Removing $HOME/Library/Caches/com.surteesstudios.Bartender..."
if [ -d "$HOME/Library/Caches/com.surteesstudios.Bartender" ]; then
    rm -rf "$HOME/Library/Caches/com.surteesstudios.Bartender" 2>/dev/null || true
elif [ -f "$HOME/Library/Caches/com.surteesstudios.Bartender" ]; then
    rm -f "$HOME/Library/Caches/com.surteesstudios.Bartender" 2>/dev/null || true
fi

# Remove $HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies
echo "Removing $HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies..."
if [ -d "$HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies" ]; then
    rm -rf "$HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies" 2>/dev/null || true
elif [ -f "$HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies" ]; then
    rm -f "$HOME/Library/Cookies/com.surteesstudios.Bartender.binarycookies" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.surteesstudios.Bartender.plist
echo "Removing $HOME/Library/Preferences/com.surteesstudios.Bartender.plist..."
if [ -d "$HOME/Library/Preferences/com.surteesstudios.Bartender.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.surteesstudios.Bartender.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.surteesstudios.Bartender.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.surteesstudios.Bartender.plist" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
