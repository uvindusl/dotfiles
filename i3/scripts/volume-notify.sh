#!/bin/bash

# Get volume percentage
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

# Check if muted
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -oP 'yes|no')

if [ "$muted" = "yes" ]; then
    notify-send -h string:x-dunst-stack-tag:volume "Volume" "Muted" -h int:value:0
else
    notify-send -h string:x-dunst-stack-tag:volume "Volume" "${volume}%" -h int:value:${volume}
fi
