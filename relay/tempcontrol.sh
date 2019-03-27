#!/bin/bash

while true;
do
temp=$(vcgencmd measure_temp | awk -F"." '{print $1}' | cut -c 6-)

if [ $temp -gt 45 ]
then
	pump_on
fi

if [ $temp -lt 30 ]
then
	pump_off
fi
done
