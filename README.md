# Hytale-Linux-Controller-Fix
Hytale's Linux build is distributed as a Flatpak. On some systems, the game may not detect controllers even though Linux itself sees them. This script grants the Hytale Flatpak access to `/dev/input` devices using Flatpak's `--device=input` permission.
