#!/bin/bash
killall conky
sleep 5 && conky -c ~/.config/scripts/conky/fileConkygraf/conkygraf ;
exit 0

