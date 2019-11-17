#!/bin/bash
killall conky
sleep 10 && conky -c ~/.config/scripts/conky/conkybar ;
exit 0

