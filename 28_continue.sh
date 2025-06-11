#!/bin/bash

echo "Printing the odd elements between 1 and 10."

for i in {1..10}
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then 
		continue
	fi
	echo "This is a odd number : $i"
done
