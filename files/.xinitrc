#!/bin/sh

exec $HOME/.scripts/dwm_xsetroot.sh &
exec feh --bg-fill $HOME/.scripts/nord_mountains_wallpaper.jpg &
exec picom &
exec dunst &
exec blueman-applet &
exec nm-applet &
exec dwm
