#!/bin/sh

choices="single\nhome\noffice\nmanual"

chosen=$(echo "$choices" | dmenu -i -l 10 -c)

case "$chosen" in
  single) exec $HOME/.scripts/monitors/single.sh;;
  home) exec $HOME/.scripts/monitors/home.sh;;
  office)exec $HOME/.scripts/monitors/office.sh;;
  manual) exec arandr;;
esac
