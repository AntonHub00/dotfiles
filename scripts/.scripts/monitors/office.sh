#!/bin/sh
xrandr --output DP1 --off
xrandr --output DP1-8 --off
xrandr --output DP1-9 --off
xrandr --output DP2 --off
xrandr --output DP3 --off
xrandr --output DP4 --off
xrandr --output VIRTUAL1 --off
xrandr --output HDMI1 --mode 1920x1080 --pos 0x0 --rotate normal
xrandr --output eDP1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal
