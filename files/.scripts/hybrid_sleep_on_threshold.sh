#!/usr/bin/env bash

# The user (MY_USER) must have permission to execute hybrid-sleep without
# password, for example:
# antonhub ALL=(ALL) NOPASSWD:/usr/bin/systemctl hybrid-sleep

THRESHOLD=5
MY_DISPLAY=":0"
MY_USER="antonhub"
MY_USER_ID=$(id -u $MY_USER)

set_action(){
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [[ $status == "Discharging" && $capacity -le $THRESHOLD ]]; then
        case $1 in
            "warning")
                sudo -u $MY_USER DISPLAY=$MY_DISPLAY DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$MY_USER_ID/bus notify-send -u critical "Battery threshold reached." "System will automatically hybrid-sleep in 1 minute (unless you connect the charger)."
                sleep 1m
                ;;
            "hybrid-sleep")
                sudo /usr/bin/systemctl hybrid-sleep
                ;;
        esac
    fi
}

set_action "warning"
set_action "hybrid-sleep"
