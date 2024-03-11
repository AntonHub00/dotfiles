#!/usr/bin/env bash

# These setttings are specific to my current hardware.

# The first string (the one after "--set-prop") is got from "xinput list"
# command and it is supposed to match my devices name printed by that command.

# The second string are setttings available for that specific device. And you
# can see that settings with the following command:
# xinput list-props "Elan Touchpad" ("Elan Touchpad" is the
# device name).

# Set mouse config
# xinput --set-prop "Logitech USB Optical Mouse" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "Logitech G203 LIGHTSYNC Gaming Mouse" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "Mi Silent Mouse" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "UGREEN BLE Mouse" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "pointer:UGREEN Mouse UGREEN Mouse" "libinput Accel Profile Enabled" 0, 1

# Set touchpad config
xinput --set-prop "Elan Touchpad" "libinput Natural Scrolling Enabled" 1
xinput --set-prop "Elan Touchpad" "libinput Tapping Enabled" 1
# xinput --set-prop "Elan Touchpad" "libinput Accel Profile Enabled" 0, 1

# Set trackpoint config
# xinput --set-prop "Elan TrackPoint" "libinput Accel Profile Enabled" 0, 1

# Set keyboard config
# The command below means the following:
# Model: pc105 (Generic 105 keys keyboard model).
# Layouts: US and US.
# Variants: US (empty is no variant) and US international with dead keys.
# Option: Shift keys (both) to toggle the keyboard layouts with their variants
# (US "classic" and US international with dead keys).
# See https://jlk.fjfi.cvut.cz/arch/manpages/man/xkeyboard-config.7
setxkbmap -model pc105 -layout us,us -variant ,intl -option grp:alt_space_toggle ctrl:nocaps

# Set key repeat rate
# xset r rate DELAY CPS
# DELAY is time in miliseconds to start to repeat key while holding down.
# CPS (Click Per Second). I usually set the default value.
# xset r rate 200 25
# xset r rate 200 40
xset r rate 300 25
