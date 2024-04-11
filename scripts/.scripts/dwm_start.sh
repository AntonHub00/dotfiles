#!/bin/sh

####################### With Gnome Display Manager (GDM)#######################
# Instructions to use with GDM (Gnome Display Manager). Useful for Ubuntu, for
# example.
# Create a desktop entry file: /usr/share/xsessions/dwm.desktop
# Point the "Exec" command to this script. Example of current config:

# [Desktop Entry]
# Encoding=UTF-8
# Name=Dwm
# Comment=Dynamic window manager
# Exec=/home/{MyUser}/.scripts/dwm_start.sh
# Icon=dwm
# Type=XSession

# Now dwm (or the set window manager) should show up in the desktop environment
# menu to be selectable.
###############################################################################

exec $HOME/.scripts/dwm_xsetroot.sh &
exec $HOME/.scripts/set_wallpaper.sh &
exec $HOME/.scripts/set_inputs.sh &
exec nm-applet &
exec blueman-applet &
exec pasystray &
exec cbatticon -i symbolic -x "notify-send 'Battery Info' '[$(cat /sys/class/power_supply/BAT0/capacity)%] [$(cat /sys/class/power_supply/BAT0/status)]'" &
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
exec xss-lock -- slock &
export SSH_AUTH_SOCK &

exec dwm
