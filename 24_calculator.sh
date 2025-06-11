#!/bin/bash

echo "Welcome to calculator!!!"

while true
do
	echo "+ for addition"
	echo "- for subtraction"
	echo "x for multiplication"
	echo "/ for division"
	echo "Press any other key for exit."

	read -p "Enter the first number :" num1
	read -p "Enter the second number :" num2
	read -p "Enter your choice :" choice

	case $choice in
		+)
			echo "The addition of $num1 and $num2 is $((num1+num2))"
			;;
		-)
			echo "The subtraction of $num1 and $num2 is $((num1-num2))"
			;;
	        x)	
			echo "The multiplication of $num1 and $num2 is $((num1*num2))"
			;;
		/)
			echo "The division of $num1 and $num2 is $((num1/num2))"
			;;
		*)
			echo "THANK YOU FOR USING THE CALCULATOR!!!"
			exit
			;;
	esac
done
