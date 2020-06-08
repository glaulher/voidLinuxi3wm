xrdb -load ~/.Xresources

#Teclado em pt-br
setxkbmap -model abnt2 -layout br -variant abnt2

#pactl set-sink-volume 0 100%
start-pulseaudio-x11 

xbacklight -set 35

#Sem beeps chatos
xset -b

sleep 1 && $HOME/.config/i3status/i3status_scripts/openweatherrun &
#sleep 2 && $HOME/.config/i3status/i3status_scripts/calendar &
#sleep 4 && pnmixer &
#sleep 6 && cbatticon &
sleep 6 && cbatticon -l 95 -r 70 -c $HOME/.config/scripts/shutdown &
sleep 10 && $HOME/.config/i3status/i3status_scripts/power_menu &

#Iniciar o i3
#exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3
exec dbus-launch --sh-syntax --exit-with-session i3
