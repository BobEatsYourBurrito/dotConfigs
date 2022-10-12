#!/bin/bash

feh --bg-scale ~/Pictures/wallhaven.jpg &

picom -b &

while :; do
  UPDATES=$(checkupdates+aur | wc -l > ~/links/updateCheck)
  sleep 2m
done &


while true; do
  
  VOLUME=$( pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,' )

	xsetroot -name "| $VOLUME%  | $(cat /sys/class/power_supply/BAT0/capacity)%  | $(date +%a-%b-%d) | $(date +%T) | ArchDeck Updates ($(cat ~/links/updateCheck)) "
	sleep 1s
done &

exec dwm > ~/pkgs/dwm/dwm.log

#exec awesome
