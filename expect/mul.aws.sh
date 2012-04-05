#!/usr/bin/bash
for i in ec2-175-41-169-207 ec2-175-41-175-55 ec2-46-137-226-123 ec2-122-248-203-88  ec2-122-248-193-73
do
	expect autossh.sh $i.ap-southeast-1.compute.amazonaws.com bsdc mydlink $HOME
done
