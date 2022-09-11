#!/bin/bash

./.fehbg &

picom -b &
updates=0 &
updates=$(checkupdates | wc -l)
#while true; do
#  updates=$(checkupdates | wc -l) >
#  sleep 1s
#done & 

while true; do
  xsetroot -name " | $(bash ~/links/batlife.sh) | $(date +%D) | $(date +%T) | Bobby's ArchDeck ($updates) |"
  sleep 1s
done &

xrdb .Xresouces &
exec dwm > ~/.dwm.log 


