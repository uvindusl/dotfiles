#!/bin/bash

# Get current brightness percentage
current=$(brightnessctl get)
max=$(brightnessctl max)
brightness=$((current * 100 / max))

notify-send -h string:x-dunst-stack-tag:brightness "Brightness" "${brightness}%" -h int:value:${brightness}
