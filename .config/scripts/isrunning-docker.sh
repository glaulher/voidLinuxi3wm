#!/bin/sh 

if [ "$(systemctl is-active docker.service)" = "active" ]; then
	echo ""
#    if [ "$(docker ps | cut -c113-115 | grep "Up" | sed 's/ //g')" = "Up" ]; then
    
#    echo " Container "`docker ps | grep "Up" | cut -c155-200 | sed 's/ //g'`" run"
     
#    else
#     echo " Docker "`docker ps -a | sed 's/.*NAMES//'| sed 's/.*ago//' |  sed 's/.*tcp //' | sed 's/ //g' | sed 's/$/ |/' ` " stop" 
#    fi    
else
#	echo ""
#    echo " Docker off"
echo ""
fi
