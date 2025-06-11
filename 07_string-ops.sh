#!/bin/bash

str="Hello World"

echo "Length of the string is ${#str}"
echo "String in uppercase--- ${str^^}"
echo "String in lowercase--- ${str,,}"

newStr=${str/World/Buddy}
echo "The new string is--- ${newStr}"

slicedStr=${newStr:6:5}
echo "The sliced string is--- ${slicedStr}}"

