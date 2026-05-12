#!/usr/bin/env sh
set -eu

APP_ID="com.hypixel.HytaleLauncher"

echo "Hytale Linux controller permission fixer"
echo

if ! command -v flatpak >/dev/null 2>&1; then
  echo "Error: flatpak is not installed."
  exit 1
fi

if ! flatpak info "$APP_ID" >/dev/null 2>&1; then
  echo "Error: Hytale Flatpak is not installed as $APP_ID."
  echo "Install Hytale first, then run this script again."
  exit 1
fi

echo "Granting Hytale access to Linux input devices..."
flatpak override --user \
  --device=input \
  --filesystem=/run/udev:ro \
  "$APP_ID"

echo
echo "Done."
echo "Fully quit Hytale, reconnect your controller, then launch Hytale again."
echo
echo "To verify permissions:"
echo "  flatpak info --show-permissions $APP_ID"
