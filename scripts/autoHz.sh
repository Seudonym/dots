#!/bin/bash
status=$(cat /sys/class/power_supply/BAT1/status)
if [[ $status = "Discharging" ]]
then
  hyprctl keyword monitor eDP-1,2560x1440@60,0x0,1.5
else
  hyprctl keyword monitor eDP-1,2560x1440@165,0x0,1.5
fi
