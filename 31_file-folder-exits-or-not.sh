#!/bin/bash

if [[ ! -d myscripts ]]
then 
	echo "The folder doesn't exists."
else
	echo "The folder exists."
fi

# Checking the existence of the file

if [[ -f names.txt ]]
then
	echo "The file exists."
else
	echo "The file does not exists."
fi
