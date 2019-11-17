#!/bin/bash 
 
wicd-gtk -n >/dev/null &
STATUS="$(sleep 4 && xdotool getwindowfocus getwindowname)"
TITLE="Gestor de Redes Wicd"
SUBTITLE=" Propriedades"

while [  "$STATUS" == "$TITLE" ]; do
	
	NEWSTATUS="$(sleep 4 && xdotool getwindowfocus getwindowname | cut -d - -f2)"
    
    if [ "$NEWSTATUS" != "$TITLE" ] && [ "$NEWSTATUS" == "$SUBTITLE" ] || [ -z "$NEWSTATUS"  ]; then
      
		while [  "$NEWSTATUS" == "$SUBTITLE"  ]; do
			NEWSTATUS="$(sleep 4 && xdotool getwindowfocus getwindowname | cut -d - -f2)"
	    done
	    
	    elif [ "$NEWSTATUS" != "$TITLE" ] && [ "$NEWSTATUS" != "$SUBTITLE" ]; then
			STATUS="SAIR"
	fi  
done

killall wicd-client 

