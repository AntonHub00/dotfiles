#!/bin/sh

exec $HOME/.scripts/dwm_xsetroot.sh &
exec feh --bg-fill $HOME/.scripts/nord_mountains_wallpaper.jpg &
exec dunst &
exec nm-applet &
exec blueman-applet &

# Input config (keyboard, touchpad, mouse, etc.) ------------------------------

# Mouse
exec xinput --set-prop "Logitech USB Optical Mouse" "libinput Accel Profile Enabled" 0, 1 &

# Touchpad
exec xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Accel Profile Enabled" 0, 1 &
exec xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
exec xinput --set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 &

# Trackpoint
exec xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Profile Enabled" 0, 1 &

# Keyboard config (Generic 105 keys keyboard model, US layout and use both
# shift keys to toggle US international with dead keys)
# See https://jlk.fjfi.cvut.cz/arch/manpages/man/xkeyboard-config.7
exec setxkbmap -model pc105 -layout us,us -variant ,intl -option grp:shifts_toggle

exec dwm
