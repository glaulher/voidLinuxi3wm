#!/bin/bash 

#
#Criado Por Glaulher Medeiros 2019
#
if [ "$(systemctl is-active docker.service)" = "active" ]; then
systemctl stop docker
systemctl stop containerd
fi 
