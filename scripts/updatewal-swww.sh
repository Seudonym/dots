#!/bin/bash
# ----------------------------------------------------- 
# Select random wallpaper and create color scheme
# ----------------------------------------------------- 
killall display
wal -q -i ~/Pictures/Wallpapers/

# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"

# ----------------------------------------------------- 
# Copy selected wallpaper into .cache folder
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# get wallpaper iamge name
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Set the new wallpaper and reload waybar
# ----------------------------------------------------- 
swww img $wallpaper \
    --transition-fps=60 \
    --transition-type=center 

killall waybar
waybar &
# ----------------------------------------------------- 
# Send notification
# ----------------------------------------------------- 
notify-send "Colors and Wallpaper updated" "with image $newwall"
echo "DONE!"
