#!/bin/bash

THRESHOLD=5
MY_USER="antonhub"
MY_USER_ID=$(id -u $MY_USER)

set_action(){
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [[ $status == "Discharging" && $capacity -le $THRESHOLD ]]; then
        case $1 in
            "message")
                sudo -u $MY_USER DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$MY_USER_ID/bus notify-send -u critical "Battery threshold reached." "System will automatically hybrid-sleep in 1 minute (unless you connect the charger)."
                sleep 1m
                ;;
            "hybrid-sleep")
                systemctl hybrid-sleep
                ;;
        esac
    fi
}

set_action "message"
set_action "hybrid-sleep"
