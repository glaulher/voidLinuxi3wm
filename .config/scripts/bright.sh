#!/bin/bash 

#
#Criado Por Glaulher Medeiros 2019
#
BAR_HEIGHT=22  # polybar height
BORDER_SIZE=1  # border size from your wm settings
YAD_WIDTH=53  # 222 , 93 is minimum possible value
YAD_HEIGHT=300 # 188 is minimum possible value 

 if [ "$(xdotool getwindowfocus getwindowname)" = "yad-brilho" ]; then
        exit 0
    fi

    eval "$(xdotool getmouselocation --shell)"
    eval "$(xdotool getdisplaygeometry --shell)"

    # X
    if [ "$((X + YAD_WIDTH / 2 + 2 + BORDER_SIZE))" -gt "$WIDTH" ]; then #Right side
        : $((pos_x = WIDTH - YAD_WIDTH - BORDER_SIZE - 4))
    elif [ "$((X - YAD_WIDTH / 2 - 2 - BORDER_SIZE))" -lt 1 ]; then #Left side
        : $((pos_x = BORDER_SIZE))
    else #Center
        : $((pos_x = X - YAD_WIDTH / 2 - 2))
    fi

    # Y
    if [ "$Y" -gt "$((HEIGHT / 2))" ]; then #Bottom
        : $((pos_y = HEIGHT - YAD_HEIGHT - 4 - BAR_HEIGHT - BORDER_SIZE))
    else #Top
        : $((pos_y = BAR_HEIGHT + BORDER_SIZE))
    fi
    
    
BRIGHT=$(xbacklight | cut -d . -f1)
yad --scale --text "    " --undecorated \
    --no-buttons --vertical \
    --min-value 0 --max-value 100 --value $BRIGHT \
	--step 20 --title="yad-brilho" \
	--close-on-unfocus --posx $pos_x \
	--posy $pos_y --width=$YAD_WIDTH --height=$YAD_HEIGHT \
	--print-partial | xargs -i xbacklight -set {}% 
	
	~/.config/scripts/popupbright.sh 
