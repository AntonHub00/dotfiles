#!/bin/bash

lock_screen_image="/tmp/lock_screen_image.png"

gnome-screenshot -f $lock_screen_image > /dev/null 2>&1
convert -blur 0x5 $lock_screen_image $lock_screen_image
i3lock -i $lock_screen_image
rm $lock_screen_image
