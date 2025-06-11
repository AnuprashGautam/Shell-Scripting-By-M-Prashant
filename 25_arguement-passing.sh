#!/bin/bash

echo "You have passed the $# number of arguements."
echo "The first and second arguements are: $1 and $2"

echo "Printing all the arguements: $@"

echo "Printin all the elements using the for loop:"

for i in $@
do
	echo "The current element is $i"
done
