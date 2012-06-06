#!/usr/bin/bash
for i in 61 62 63 64 65 66 81 82
do
    python2 autossh.py 172.18.195.$i root bsdc707 
done
