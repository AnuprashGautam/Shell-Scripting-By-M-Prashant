#!/bin/bash

# Until loop is jsut opposite of while loop.

a=10
until [[ $a -eq 1 ]]
do
	echo "$a"
	# let a--;
	(( a-- ))
done
