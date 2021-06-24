#!/bin/sh

exec $HOME/.scripts/dwm_xsetroot.sh &
exec $HOME/.scripts/set_wallpaper.sh &
exec $HOME/.scripts/set_inputs.sh &
exec dunst &
exec nm-applet &
exec wmname compiz & #https://tools.suckless.org/x/wmname/
# exec blueman-applet &

# Packages needed for keyring (Arch Linux):
# - gnome-keyring (Allows to store secrets, passwords, keys and cetificates and
# make them available to applications).
# - libsecret (Allows applications to use the keyrings).
# - seahorse (Graphical app to manage the contents of Gnome Keyring)

# Starts the gnome-kerying-daemon.
# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
# export SSH_AUTH_SOCK &

# Gets rid of the error that denies to create a new keyring with seahorse.
# source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh &

exec dwm
