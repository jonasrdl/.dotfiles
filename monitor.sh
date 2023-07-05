#!/bin/bash

# Run xrandr command and store the output
xrandr_output=$(xrandr --query)

# Count the number of lines in the output that contain " connected"
monitor_count=$(echo "$xrandr_output" | grep -c " connected")

if [ "$monitor_count" -gt 1 ]; then
  # More than one monitor is connected
  echo "more than one monitor is connected"
  bash ~/.screenlayout/multiple-monitors.sh
else
  # Only one monitor is connected or no monitors are connected
  echo "Only one monitor is connected or no monitors are connected."
  bash ~/.screenlayout/single-monitor.sh
fi
