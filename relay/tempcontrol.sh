#!/bin/bash

while true;
do
temp=$(vcgencmd measure_temp | awk -F"." '{print $1}' | cut -c 6-)
pumpoverride=$(cat /mnt/ramdisk/tempoverride)
if [ ! -z "$pumpoverride" ] 
then 
	pump_on
	sleep 10
else
if [ $temp -gt 42 ]
then
	pump_on
	sleep 30
fi

if [ $temp -lt 30 ]
then
	pump_off
fi
fi
sleep 10
done
