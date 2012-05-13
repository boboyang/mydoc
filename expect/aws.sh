#!/usr/bin/bash
for i in ec2-122-248-197-36 ec2-46-137-200-232
do
	python2 autossh.py  $i.ap-southeast-1.compute.amazonaws.com bsdc mydlink 
done
