#!/bin/bash

# Get battery info
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(cat /sys/class/power_supply/BAT0/status)

# Check if battery is low
if [ "$battery_level" -le 20 ] && [ "$battery_status" = "Discharging" ]; then
    notify-send -u critical "Battery Low" "Battery at ${battery_level}%"
elif [ "$battery_level" -le 10 ] && [ "$battery_status" = "Discharging" ]; then
    notify-send -u critical "Battery Critical" "Battery at ${battery_level}% - Plug in charger!"
fi
