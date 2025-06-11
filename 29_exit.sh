#!/bin/bash

read -p "What you want to continue? (Y/n):" choice

if [[ $choice == "Y" ]]
then
	echo "Performing 1 task..."
	echo "Performing 2 task..."
	echo "Performing 3 task..."
	echo "..."
else
	echo "Ending the script"
	exit 1
fi


