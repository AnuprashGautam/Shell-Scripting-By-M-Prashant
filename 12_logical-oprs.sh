#!/bin/bash

# AND Operation
read -p "Enter your country name:" country
read -p "Enter your age:" age

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "Your are eligible to cast your vote in Indian elections."
else
	echo "Your are either not the citizen of India, or your are young."
fi

# OR Operation
read -p "Do you have driving license? (y/n):" dl

if [[ $dl == "y" ]] || [[ $age -ge 18 ]]
then 
	echo "You can drive the car."
else
	echo "You cann't drive the car."
fi
