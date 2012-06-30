#!/bin/bash

SRC=/run/media/whille/我的光盘1
DST=/run/media/whille/Elements/

while [ 1 ]
do
if [ $(du --max-depth=0 $SRC|cut -f1) -gt 4 ]
then
echo "Cd Drive Found"
fname=`volname /dev/cdrom`
echo -e  $fname" Found.\nStarting  to copy.."
flag=0
i=0;
orgfname=$fname;
while [ $flag -eq 0 ]
do
if [ -d "$DST`echo $fname`" ]
then
((i++))
 fname=$orgfname-$i
 else
 flag=1
fi
done
echo "Folder Name: "$fname
cp -r "$SRC" "$DST`echo $fname`"
 sudo eject
 echo -e "Cd Ejected.\nInsert next Cd"
 sleep 15
else
 echo "Waiting For Cd"
 sleep 15;
fi
done
