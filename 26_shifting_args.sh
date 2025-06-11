#!/bin/bash

echo "The first name is : $1"
shift
echo "The middle name is : $1"
shift 
echo "The last name is : $1"

echo "The description is : $@" 
