#!/bin/bash

while IFS="," read f1 f2 f3
do
	echo "$f1  | $f2  | $f3"
done < csv-file.csv

echo "--------------------Without first line----------------------"


cat csv-file.csv | awk 'NR!=1 {print}' | while IFS="," read f1 f2 f3
do
        echo "$f1  | $f2  | $f3"
done

