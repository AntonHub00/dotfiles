#!/bin/bash

#Takes the current volume sink
SINK=$(pacmd list-sinks | grep "index:" | grep '*' | awk '{print $3}')

#Sets th "default" sink
if [ "$SINK" == "" ]; then
  SINK="0"
fi

#Set the volume acording to the current sink
if [ "$1" != "M" ]; then
  pactl set-sink-volume "$SINK" "$1"
else
  pactl set-sink-mute "$SINK" toggle
fi
