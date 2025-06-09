#!/bin/bash

file="./names.txt"
i=1

for name in $(cat $file)
do
	echo "$i. $name"
	((i=i+1))
	#i=$((i+1))
	#((i++))
done
