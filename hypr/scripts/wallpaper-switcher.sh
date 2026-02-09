#!/bin/bash

WALLDIR="$HOME/Pictures/Wallpapers"

choice=$(find "$WALLDIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.webp" \) \
  -printf "%f\n" | sort | wofi --dmenu --prompt "Wallpaper")

[ -z "$choice" ] && exit 0

swww img "$WALLDIR/$choice" \
  --transition-type wipe \
  --transition-duration 2 \
  --transition-fps 144
