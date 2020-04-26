#!/usr/bin/env bash

# Write a program to demostrate how to initialize and read an arry+=(item)

array=()
echo "Initialized Array: $array"

echo "Number of element:"
read size

i=0

while [ $size -ne $i ]
do
  i=$(( i + 1 ))
  echo "Enter Array Index $i:"
  read num
  array[$i]=$num
done

echo "Populated Array: $array"