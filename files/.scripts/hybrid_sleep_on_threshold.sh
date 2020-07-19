#!/bin/bash

THRESHOLD=5

set_action(){
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [[ $status == "Discharging" && $capacity -le $THRESHOLD ]]; then
        case $1 in
            "message")
                notify-send -u critical "Battery threshold reached." "System will automatically hybrid-sleep in 1 minute (unless you connect the charger)."
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
