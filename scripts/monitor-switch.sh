#!/bin/bash

# Detect connected monitors
LAPTOP="eDP-1"
EXTERNAL="HDMI-1"

# Check if external monitor is connected
if xrandr | grep "$EXTERNAL connected"; then
    echo "External monitor detected - Setting up dual display"
    
    # External monitor as primary, laptop screen to the right
    xrandr --output $EXTERNAL --auto --primary --output $LAPTOP --auto --right-of $EXTERNAL
    
    # OR if you want laptop as primary and external to the left:
    # xrandr --output $LAPTOP --auto --primary --output $EXTERNAL --auto --left-of $LAPTOP
    
else
    echo "No external monitor - Using laptop screen only"
    
    # Only laptop screen
    xrandr --output $LAPTOP --auto --primary --output $EXTERNAL --off
fi

# Wait a moment for xrandr to apply changes
sleep 1

# Restart polybar on all active monitors
~/.config/polybar/launch_polybar.sh
