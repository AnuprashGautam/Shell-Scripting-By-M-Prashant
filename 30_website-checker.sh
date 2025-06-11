#!/bin/bash

echo "------------------WELCOME TO THE WEBSITE CHECKER-----------------"

read -p "Enter the website name:" website

ping -c 1 $website

if [[ $? -eq 0 ]]
then 
	echo "The website is functional."
else
	echo "The website is not functional."
fi
