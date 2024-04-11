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
    # disk_root=$(df -h | awk '{ if ($6 == "/") print $4 }')" "

    # disk_home=$(df -h | awk '{ if ($6 == "/home") print $4 }')" "

    # temperature=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)" "

    sink_volume_icon=$(pactl get-sink-mute @DEFAULT_SINK@ | awk -F ' ' '$2 == "yes" { print "󰝟" } $2 != "yes" { print "" }')""
    sink_volume=$(pactl get-sink-volume @DEFAULT_SINK@ |  awk -F ' / ' '(NR==1){ print $2 }' | sed 's/ *//')" $sink_volume_icon"

    source_volume_icon=$(pactl get-source-mute @DEFAULT_SOURCE@ | awk -F ' ' '$2 == "yes" { print "󰍭" } $2 != "yes" { print "󰍬" }')""
    source_volume=$(pactl get-source-volume @DEFAULT_SOURCE@ |  awk -F ' / ' '(NR==1){ print $2 }' | sed 's/ *//')" $source_volume_icon"

    memory=$(free -h | awk '(NR==2){ print $3"/"$2 }')" 󰍛"

    battery_status=$(cat /sys/class/power_supply/BAT0/status)

    battery_capacity=$(cat /sys/class/power_supply/BAT0/capacity)"% "

    date=$(date +"%a %m-%d-%Y  ")
    time=$(date +"%l:%M %p ")

    keyboard=$(print_current_keyboard_layout)

    output=$(printf "[ %s ] [ %s ] [ %s ] [ %s ] [ %s %s ] [ %s | %s ]" "$keyboard" "$memory" "$sink_volume" "$source_volume" "$battery_status" "$battery_capacity" "$date" "$time")

    xsetroot -name "$output"
    # echo $output

    sleep 1
done
