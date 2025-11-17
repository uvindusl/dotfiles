#!/usr/bin/env bash

# Font Awesome 5/6 Icons (Unicode)
# Note: These Unicode characters depend on a Font Awesome font being installed and used by Rofi.

# Power Off  (\uf011)
shutdown="  Shutdown"
# Redo/History  (\uf01e) or Sync  (\uf021) or Power Reset  (\uf0d0) - using Redo/History for Reboot
reboot="  Reboot" 
# Lock  (\uf023)
lock="  Lock"
# Moon  (\uf186) or Bed  (\uf236) - using Bed for Suspend
suspend="  Suspend"
# Sign Out  (\uf2f5) or Door Open  (\uf52b) - using Sign Out for Logout
logout="  Logout"

# Show menu
chosen=$(echo -e "$lock\n$logout\n$suspend\n$reboot\n$shutdown" | \
    rofi -dmenu -i -p "Power Menu" \
    -theme ~/.config/rofi/themes/powermenu.rasi)

# Execute
case $chosen in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Lock) betterlockscreen -l dim;;  # Changed to betterlockscreen
    *Suspend) 
        betterlockscreen -s  # Lock and suspend
        ;;
    *Logout) i3-msg exit ;;
esac
