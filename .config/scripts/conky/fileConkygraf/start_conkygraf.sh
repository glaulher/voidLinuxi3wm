#!/bin/bash
killall conky
sleep 5 && conky -c ~/.config/scripts/conky/fileConkygraf/conkygraf
#conky -c ~/.config/scripts/conky/fileConkygraf/conkygraf1
#conky -c ~/.config/scripts/conky/fileConkygraf/conkygraf2 ;
exit 0

