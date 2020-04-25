#!/usr/bin/env bash

# Implement sum of array to demonstrate for loop.

#Initialize array
input_array=(10 2 3 4 5 6 7 8 9 10)
#Get length of the array.
length=${#input_array[@]}
echo "length : $length"

echo "Calculating sum by iterating array directly:"
sum=0
for i in "${input_array[@]}";
do
  #echo $i #array element
  sum=$(( sum + i ))
done
echo "Sum: $sum"


echo "Calculating sum by iterating array using index:"
sum2=0
for (( i = 1 ; i <= $length ; i++ )); #array index in bash startes with 1
do
  #echo $input_array[i] #array ith element.
  sum2=$(( sum2 + i ))
done
echo "Sum2: $sum2"