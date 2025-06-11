#!/bin/bash

# Array (Key-Value Pair)

declare -A pairs
pairs=([name]="Anuprash" [city]="Pune" [age]=23)

echo "First value: ${pairs[name]}"

echo "Second value: ${pairs[city]}"

echo "First value: ${pairs[age]}"
