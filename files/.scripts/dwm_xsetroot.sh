#!/bin/bash

while true; do
    disk_root=$(df -h | awk '{ if ($6 == "/") print $4 }')" "

    disk_home=$(df -h | awk '{ if ($6 == "/home") print $4 }')" "

    temperature=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)" "

    volume=$(amixer get Master | awk -F '[][]' 'END{ print $2 }')" "

    memory=$(free -h | awk '(NR==2){ print $3"/"$2 }')" "

    battery=$(cat /sys/class/power_supply/BAT0/capacity)"% "

    date=$(date +"%m-%d-%Y   %H:%M ")

    output=$(printf "[ %s ] [ %s ] [ %s ] [ %s ] [ %s ] [ %s ] [ %s ]" "$disk_root" "$disk_home" "$temperature" "$volume" "$memory" "$battery" "$date")

    xsetroot -name "$output"

    sleep 1
done
