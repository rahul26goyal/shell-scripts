#!/usr/bin/env bash

#read the whole file as a simpel array
input_file="../test-data/file1.txt"

count=0
echo "Reading file line by line:"
cat $input_file | while read line
do
  count=$(( count + 1))
  echo "Line $count: $line"
done
echo "Number of lines: $count"