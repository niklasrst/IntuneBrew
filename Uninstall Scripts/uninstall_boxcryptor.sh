#!/bin/bash
# Uninstall script for Boxcryptor
# Generated by IntuneBrew

# Exit on error
set -e

echo "Uninstalling Boxcryptor..."

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Kill application process if running
echo "Stopping Boxcryptor if running..."
pkill -f "Boxcryptor" 2>/dev/null || true

# Remove /Applications/Boxcryptor.app
echo "Removing /Applications/Boxcryptor.app..."
if [ -d "/Applications/Boxcryptor.app" ]; then
    rm -rf "/Applications/Boxcryptor.app" 2>/dev/null || true
elif [ -f "/Applications/Boxcryptor.app" ]; then
    rm -f "/Applications/Boxcryptor.app" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif
echo "Removing $HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif..."
if [ -d "$HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif" ]; then
    rm -rf "$HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif" ]; then
    rm -f "$HOME/Library/Application Scripts/com.boxcryptor.osx.Rednif" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/Boxcryptor
echo "Removing $HOME/Library/Application Support/Boxcryptor..."
if [ -d "$HOME/Library/Application Support/Boxcryptor" ]; then
    rm -rf "$HOME/Library/Application Support/Boxcryptor" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/Boxcryptor" ]; then
    rm -f "$HOME/Library/Application Support/Boxcryptor" 2>/dev/null || true
fi

# Remove $HOME/Library/Application Support/com.boxcryptor.osx
echo "Removing $HOME/Library/Application Support/com.boxcryptor.osx..."
if [ -d "$HOME/Library/Application Support/com.boxcryptor.osx" ]; then
    rm -rf "$HOME/Library/Application Support/com.boxcryptor.osx" 2>/dev/null || true
elif [ -f "$HOME/Library/Application Support/com.boxcryptor.osx" ]; then
    rm -f "$HOME/Library/Application Support/com.boxcryptor.osx" 2>/dev/null || true
fi

# Remove $HOME/Library/Caches/com.boxcryptor.osx
echo "Removing $HOME/Library/Caches/com.boxcryptor.osx..."
if [ -d "$HOME/Library/Caches/com.boxcryptor.osx" ]; then
    rm -rf "$HOME/Library/Caches/com.boxcryptor.osx" 2>/dev/null || true
elif [ -f "$HOME/Library/Caches/com.boxcryptor.osx" ]; then
    rm -f "$HOME/Library/Caches/com.boxcryptor.osx" 2>/dev/null || true
fi

# Remove $HOME/Library/Containers/com.boxcryptor.osx.Rednif
echo "Removing $HOME/Library/Containers/com.boxcryptor.osx.Rednif..."
if [ -d "$HOME/Library/Containers/com.boxcryptor.osx.Rednif" ]; then
    rm -rf "$HOME/Library/Containers/com.boxcryptor.osx.Rednif" 2>/dev/null || true
elif [ -f "$HOME/Library/Containers/com.boxcryptor.osx.Rednif" ]; then
    rm -f "$HOME/Library/Containers/com.boxcryptor.osx.Rednif" 2>/dev/null || true
fi

# Remove $HOME/Library/Logs/Boxcryptor
echo "Removing $HOME/Library/Logs/Boxcryptor..."
if [ -d "$HOME/Library/Logs/Boxcryptor" ]; then
    rm -rf "$HOME/Library/Logs/Boxcryptor" 2>/dev/null || true
elif [ -f "$HOME/Library/Logs/Boxcryptor" ]; then
    rm -f "$HOME/Library/Logs/Boxcryptor" 2>/dev/null || true
fi

# Remove $HOME/Library/Preferences/com.boxcryptor.osx.plist
echo "Removing $HOME/Library/Preferences/com.boxcryptor.osx.plist..."
if [ -d "$HOME/Library/Preferences/com.boxcryptor.osx.plist" ]; then
    rm -rf "$HOME/Library/Preferences/com.boxcryptor.osx.plist" 2>/dev/null || true
elif [ -f "$HOME/Library/Preferences/com.boxcryptor.osx.plist" ]; then
    rm -f "$HOME/Library/Preferences/com.boxcryptor.osx.plist" 2>/dev/null || true
fi

echo "Uninstallation complete!"
exit 0
