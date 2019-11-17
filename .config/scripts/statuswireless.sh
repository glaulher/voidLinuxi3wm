#!/bin/bash 

#
#Criado Por Glaulher Medeiros 2019
#
STATUS="$(/sbin/iwconfig wlp2s0 | grep ESSID | cut -d: -f2 | sed 's/.//1' |  cut -d\" -f1)"
killall dunst
notify-send --expire-time 2000 -i bum  "ESSID $STATUS"
