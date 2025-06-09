#!/bin/bash

while read name
do
	echo "The name is--- $name"
done < names.txt
