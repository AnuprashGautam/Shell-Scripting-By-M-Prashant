#!/bin/bash

# Arrays

myArray=(1 20 20.5 Ram "Hello World")

# Printing all the elements
echo "All values of the array are ${myArray[*]}."

# Printing specific value
echo "The value at the 3rd index is ${myArray[4]}."

# Length of array
echo "The number of elements of array is ${#myArray[*]}."

echo "The elements of array from index 2 onwards: ${myArray[*]:2}"

echo "The elements of array from index 2 to 4: ${myArray[*]:2:3}"

# Updating the array
myArray+=( new 100 120 )

echo "The updated array is ${myArray[*]}."

# Negative Indexing in Array
echo "The last element of the array is ${myArray[-1]}."

