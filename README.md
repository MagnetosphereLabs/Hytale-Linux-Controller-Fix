# Hytale Linux Controller Fix

Hytale's Linux build is distributed as a Flatpak. On some systems, the game may not detect controllers even though Linux itself sees them. This script grants the Hytale Flatpak access to `/dev/input` devices using Flatpak's `--device=input` permission.

## Run

```bash
curl -fsSL https://raw.githubusercontent.com/MagnetosphereLabs/Hytale-Linux-Controller-Fix/main/hytale-controller-fix.sh | sh
```

Then fully quit and restart Hytale.

## What it does

```bash
flatpak override --user --device=input --filesystem=/run/udev:ro com.hypixel.HytaleLauncher
```

This is a per-user Flatpak permission override. It does not install drivers and it does not modify the kernel.

## Undo

```bash
flatpak override --user --reset com.hypixel.HytaleLauncher
```
