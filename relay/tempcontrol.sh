#!/bin/bash

while true;
do
temp=$(vcgencmd measure_temp | awk -F"." '{print $1}' | cut -c 6-)
pumpoverride=$(cat /mnt/ramdisk/tempoverride)
if [ ! -z "$pumpoverride" ] 
then 
	pump_on
	if [ "$(cat /var/log/pump | tail -n 1 | awk '{print $8}')" != "on" ]; 
	then 
	    echo $(date) Pump on manually >> /var/log/pump 
    fi
	sleep 10
else
if [ $temp -gt 42 ]
then
	pump_on	
	if [ "$(cat /var/log/pump | tail -n 1 | awk '{print $8}')" != "on" ]; 
	then 
	    echo $(date) Pump on >> /var/log/pump 
    fi
	sleep 30
fi

if [ $temp -lt 30 ]
then
	pump_off
	if [ "$(cat /var/log/pump | tail -n 1 | awk '{print $8}')" != "off" ]; 
	then 
	    echo $(date) Pump off >> /var/log/pump 
    fi
fi
fi
sleep 10
done
