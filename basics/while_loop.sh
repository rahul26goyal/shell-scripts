#!/bin/sh
# write a program to print the command line arguments using while loop;

if [ $# -eq 0 ] #for integre comparison
then
  echo "No argument passed to program $0"
  exit 0
fi

echo "Printing the arguments:"
i=1
while [ $# != "0" ]
do
  echo "arg $i: $1"
  ((i=i+1))
  shift
done

#Tests
#while_loop.sh
#while_loop.sh 123 string 12.3
