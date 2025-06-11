#!/bin/bash

count=0
limit=10

while [[ $count -le limit ]]
do
	echo "The current number is $count"
	let count++
done
