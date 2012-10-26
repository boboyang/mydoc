#!/usr/bin/bash
for i in 73 74 85 86
do
    python2 autossh.py 172.18.195.$i david $bjrdpasswd
done
