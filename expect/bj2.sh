#!/usr/bin/bash
for i in 61 62 63 64 66 65 216 
do
    python2 autossh.py 172.18.195.$i root bsdc707 
done
