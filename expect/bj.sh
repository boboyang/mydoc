#!/usr/bin/bash

[ ! -f ~/.ssh/id_rsa.pub ] && ssh-keygen -C 'XXX' -t rsa

for i in 104 105 112 210 211 213 218 219 
do
    python2 autossh.py 172.18.195.$i root mydlink01 
done
