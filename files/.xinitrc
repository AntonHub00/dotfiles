#!/bin/sh

exec $HOME/.scripts/dwm_xsetroot.sh &
exec feh --bg-fill $HOME/.scripts/gruvbox_city.jpg &
exec picom &
exec dunst &
exec nm-applet &
exec blueman-applet &
exec dwm
