#!/bin/sh

exec $HOME/.scripts/dwm_xsetroot.sh &
exec $HOME/.scripts/set_wallpaper.sh &
exec $HOME/.scripts/set_inputs.sh &
exec dunst &
exec nm-applet &
exec blueman-applet &

exec dwm
