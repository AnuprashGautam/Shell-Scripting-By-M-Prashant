#!/bin/bash

USAGE=$(df -H | grep "/mnt/c" | awk '{print $5}' | tr -d %)
TO="anuprash02@gmail.com"

if [[ $USAGE -ge 20 ]]
then
	echo "WARNING!!! the space is low in C drive - $USAGE %" | mail -s "DISK SPACE ALERT" $TO
else
	echo "C drive is good to use."
fi

