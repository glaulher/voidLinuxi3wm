#!/bin/bash 
 
NIVEL="$(xbacklight | cut -d . -f1)"

    
for ((i=0;i<=$NIVEL;i+=10))
do
   echo "$i"
   BAR="$b$BAR"
   b="━"
   j=$i
   echo "$BAR"
done
for ((k=$i;k<=100;k+=10))
do
   echo "$k"
   BARV="$v$BARV"
   v="╍"
   echo "$BARV"
done 

MENSAGEM="$(echo -e "                 $NIVEL \n Brilho")"

killall xfce4-notifyd

notify-send --expire-time 50 -i xfpm-brightness-lcd  "$MENSAGEM $BAR$BARV"
sleep 2


