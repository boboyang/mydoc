#!/usr/bin/bash
for i in 18 111 112 113 114 115 117 151 210 213 218  
do
    expect autossh.sh 172.18.195.$i root mydlink01 $HOME
done
