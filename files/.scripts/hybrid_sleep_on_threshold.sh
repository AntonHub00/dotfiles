#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)
threshold=5

if [[ $status == "Discharging" && $capacity -le $threshold ]]; then
    /usr/bin/systemctl hybrid-sleep
fi
