#!/bin/bash

set -x

while true
do
	read -p "Do you want to continue? (y/n):" choice
	if [[ $choice == "y" ]]
	then
		let n=($(echo $RANDOM)%6)+1
		echo "You have got the $n"
	else
		echo "Exiting the game."
		exit 1
	fi
done
