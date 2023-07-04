#!/bin/bash
if xrandr | grep -q "connected" && [[ $(xrandr --listactivemonitors | awk 'END{print NR}') -gt 1 ]]; then
    xrandr --output eDP-1 --mode 1920x1080 --pos 0x360 --rotate normal --output HDMI-1 --off --output DP-1 --off --output DP-2 --off --output DP-1-1 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output DP-1-2 --mode 2560x1440 --pos 4480x0 --rotate normal --output DP-1-3 --off
