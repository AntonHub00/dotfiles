#!/bin/bash

print_current_keyboard_layout() {
    COMMAND=$(xset -q | grep LED | awk '{ print $10 }')

    case "$COMMAND" in
     "00000000") echo "US " ;;
     "00001000") echo "US (intl) " ;;
      *) echo "Unknown " ;;
    esac
}

while true; do
    disk_root=$(df -h | awk '{ if ($6 == "/") print $4 }')" "

    disk_home=$(df -h | awk '{ if ($6 == "/home") print $4 }')" "

    temperature=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)" "

    volume=$(amixer get Master | awk -F '[][]' 'END{ print $2 }')" "

    memory=$(free -h | awk '(NR==2){ print $3"/"$2 }')" "

    battery_status=$(cat /sys/class/power_supply/BAT0/status)

    battery_capacity=$(cat /sys/class/power_supply/BAT0/capacity)"% "

    date=$(date +"%m-%d-%Y   %H:%M ")

    keyboard=$(print_current_keyboard_layout)

    output=$(printf "[ %s ] [ %s ] [ %s ] [ %s ] [ %s ] [ %s ] [ %s %s ] [ %s ]" "$keyboard" "$disk_root" "$disk_home" "$temperature" "$volume" "$memory" "$battery_status" "$battery_capacity" "$date")

    xsetroot -name "$output"

    sleep 1
done
