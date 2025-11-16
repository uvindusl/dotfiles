#!/bin/bash

# Get player status
status=$(playerctl status 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

if [ -z "$status" ]; then
    notify-send "Media" "No player active"
    exit
fi

# Format the message
if [ "$status" = "Playing" ]; then
    icon="▶"
elif [ "$status" = "Paused" ]; then
    icon="⏸"
else
    icon="⏹"
fi

if [ -n "$artist" ] && [ -n "$title" ]; then
    notify-send -h string:x-dunst-stack-tag:media "$icon $status" "$artist - $title"
else
    notify-send -h string:x-dunst-stack-tag:media "$icon $status" "$title"
fi
