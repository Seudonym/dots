#!/usr/bin/bash

wal -q -i ~/Pictures/Wallpapers/
killall waybar
waybar &

# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"

# ----------------------------------------------------- 
# Copy selected wallpaper into .cache folder
# ----------------------------------------------------- 
# cp $wallpaper ~/.cache/current_wallpaper.jpg
# ----------------------------------------------------- 
# get wallpaper iamge name
# ----------------------------------------------------- 
cp $wallpaper ~/.cache/current_wallpaper.jpg

# ----------------------------------------------------- 
# Set the new wallpaper and reload waybar
# ----------------------------------------------------- 
swww img $wallpaper \
    --transition-fps=165 \
    --transition-type="grow" \
    --transition-pos "$(hyprctl cursorpos)"