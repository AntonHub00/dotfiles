#!/bin/bash

#NOTE:
#In order to this work for you, change this variables according to xrandr output
#You can also add more inputs if those are available (like DP, for example)
VGA="VGA-1"
HDMI="HDMI-1"
SCREEN="LVDS-1"

#Initialize with empty strings
resolution_VGA=""
resolution_HDMI=""
resolution_SCREEN=""

#Command to get the max resolution of devices conected
resolution_VGA=$(echo $(xrandr | grep $VGA -A 1| tail -n +2 | awk '{print $1}' | grep x))
resolution_HDMI=$(echo $(xrandr | grep $HDMI -A 1| tail -n +2 | awk '{print $1}' | grep x))
resolution_SCREEN=$(echo $(xrandr | grep $SCREEN -A 1| tail -n +2 | awk '{print $1}' | grep x))

#Performs action based on the input option (c = clone, l = place left, r = place right, o = just laptop screen)
while getopts 'lrco' OPTION
do
    case $OPTION in
    l) if [[ $resolution_VGA != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output VGA-1 --mode $resolution_VGA --left-of LVDS-1)
        elif [[ $resolution_HDMI != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --output DP-1 --off --output VGA-1 --off --output HDMI-1 --mode $resolution_VGA --left-of LVDS-1)
        else
            echo "No devices available"
        fi
        ;;
    r) if [[ $resolution_VGA != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output VGA-1 --mode $resolution_VGA --right-of LVDS-1)
        elif [[ $resolution_HDMI != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --output DP-1 --off --output VGA-1 --off --output HDMI-1 --mode $resolution_VGA --right-of LVDS-1)
        else
            echo "No devices available"
        fi
        ;;
    c) if [[ $resolution_VGA != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --scale-from  $resolution_VGA --output DP-1 --off --output HDMI-1 --off --output VGA-1 --mode $resolution_VGA --pos 0x0 --rotate normal)
        elif [[ $resolution_HDMI != "" ]]; then
        $(xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal --scale-from  $resolution_VGA --output DP-1 --off --output VGA-1 --off --output HDMI-1 --mode $resolution_VGA --pos 0x0 --rotate normal)
        else
            echo "No devices available"
        fi
        ;;
    o) xrandr --output LVDS-1 --primary --mode $resolution_SCREEN --pos 0x0 --rotate normal  --scale-from $resolution_SCREEN --output DP-1 --off --output HDMI-1 --off --output VGA-1 --off
        ;;
    esac
done
