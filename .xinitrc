#Teclado em pt-br
setxkbmap -model abnt2 -layout br -variant abnt2

pactl set-sink-volume 0 100%

xbacklight -set 35

#Sem beeps chatos
xset -b

#Iniciar o i3
exec i3
