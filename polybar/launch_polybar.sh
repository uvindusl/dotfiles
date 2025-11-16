#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar on all connected monitors
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo "Launching polybar on monitor: $m" >> /tmp/polybar-launch.log
    MONITOR=$m polybar --reload example >>/tmp/polybar-$m.log 2>&1 & disown
  done
else
  polybar --reload example >>/tmp/polybar1.log 2>&1 & disown
fi

echo "$(date): Bars launched on all monitors" >> /tmp/polybar-launch.log
