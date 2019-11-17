#!/bin/bash
killall conky
sleep 5
conky -c ~/.config/scripts/conky/FileConkyi3/conkygraf &
#sleep 3 #time (in s) for the DE to start; use ~20 for Gnome or KDE, less for Xfce/LXDE etc
#conky -c ~/.config/scripts/conky/FileConkyi3/rings & # the main conky with rings
#sleep 2 #time for the main conky to start; needed so that the smaller ones draw above not below (probably can be lower, but we still have to wait 5s for the rings to avoid segfaults)
#conky -c ~/.config/scripts/conky/FileConkyi3/cpu &
#sleep 1
#conky -c ~/.config/scripts/conky/FileConkyi3/mem &
#conky -c ~/.config/scripts/conky/FileConkyi3/notes &
#sleep 1
#conky -c ~/.config/scripts/conky/FileConkyi3/conkygraf3 &
