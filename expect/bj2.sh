#!/usr/bin/bash
for i in 83 84 85 86
do
    python2 autossh.py 172.18.195.$i root $bjrdpasswd
done
