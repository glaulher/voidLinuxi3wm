#Teclado em pt-br
setxkbmap -model abnt2 -layout br -variant abnt2

pactl set-sink-volume 0 100%

xbacklight -set 35

#Iniciar o i3
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3
