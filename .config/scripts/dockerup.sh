#!/bin/bash -x

#
#Criado Por Glaulher Medeiros 2019
#
if [ "$(systemctl is-active docker.service)" = "inactive" ]; then

systemctl start docker
systemctl start containerd
 
fi
