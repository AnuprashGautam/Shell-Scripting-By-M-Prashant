#!/bin/bash

echo "Hey, choose a option"
echo "a : To see the current date"
echo "b : List all the files in current"

read -p "Enter choice: " choice

case $choice in 
	a) 
		echo "The today's date is:"
		date
		;;
	b) 
		echo "The list of all files is:"
		ls
		;;
esac
