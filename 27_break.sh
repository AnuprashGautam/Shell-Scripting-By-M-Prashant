#!/bin/bash

read -p "Enter the element you want to find out? :" e

for i in {1..20}
do
	if [[ $i -eq $e ]]
	then
		echo "The element has been found on $((i+"th"))."
		break
	fi
	echo "Checking element: $i"
done
	

