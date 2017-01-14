#!/bin/sh

ping -c4 8.8.8.8 > /dev/null

if [ $? != 0 ]
then
	# shutdown -r now
	ifdown 'wlan0'
	sleep 5
	ifup --force 'wlan0'
fi
