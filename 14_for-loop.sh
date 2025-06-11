#!/bin/bash

echo "Printing the table of 2:----------"
for i in 1 2 3 4 5 6 7 8 9 10
do
	echo " 2 * $i = $((2*i)) "
done


echo "Printing the numbers from 11 to 20:----------"
for i in {11..20}
do 
	echo " $i "
done


echo "Printing the name of my friends:----------"
for i in Raju Shyam Baburao
do
	echo " $i "
done

echo "Pringting the numbers from 10 to 1:---------"
for ((i=10;i>=1;i--))
do
	echo "$i"
done


echo "Printing the elements of the array:"
myArray=( 1 2 30.5 Ram "Hellow World")

for ((i=0; i<${#myArray[*]}; i++))
do 
	echo "${myArray[$i]}"
done
