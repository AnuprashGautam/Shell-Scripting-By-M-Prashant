#!/bin/bash

read -p "Enter your marks: " marks

if [[ $marks -ge 80 ]]
then 
	echo "First Devision"
elif [[ $marks -ge 60 ]]
then
	echo "Second Devision"
elif [[ $marks -ge 40 ]]
then 
	echo "Third Devision"
else
	echo "FAIL!!!!!!!!!!!!!!"
fi
