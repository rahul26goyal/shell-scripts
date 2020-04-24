#!/bin/bash

#Write a Program to print the Grade given marks as input. This is to demo if statement.

if [ $# -ne 1 ]
then
  echo "Takes only one argument which is marks. Received $# arguments: $@"
fi

mark=$1

if [[ $mark -lt 0 || $mark -gt 100 ]]
then
  echo "Pass a value mark: [0..100], got $mark"
  exit 1
fi

if [ $mark -gt 90 ]
then
  echo "A grade - $mark"
elif [ $mark -gt 80 ]
then
  echo "B grade - $mark"
elif [ $mark -gt 70 ]
then
  echo "C grade - $mark"
elif [ $mark -ge 60 ]
then
  echo "D grade - $mark"
else
  echo "Failed - $mark"
fi
echo "Done"

#Test
# ./print_grade.sh 6
# ./print_grade.sh 66
# ./print_grade.sh 96
# ./print_grade.sh -6
# ./print_grade.sh 601





