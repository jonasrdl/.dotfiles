#!/bin/bash
WALLPAPER_DIR="/home/jriedel/Pictures/Wallpapers"

change_wallpaper() {
    wallpaper=$(find "$WALLPAPER_DIR" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" \) | shuf -n 1)
    feh --bg-fill "$wallpaper"
}

while true; do
    change_wallpaper
    sleep 300
done
