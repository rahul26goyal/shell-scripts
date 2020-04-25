#!/usr/bin/env bash

# Implement a simple program to demo how to read input from user at runtime.

if [ $# -ne 0 ]
then
  echo "No command Line argument required."
  exit 1
fi

input="a"

while [ -n "$input" ] #Unit string is not null or 0 length. ENTER is hit
do
  echo "Enter something:"
  read input
  if [ -z "$input" ] #Input in NULL or empty string.
  then
    echo "Good Bye! See you Again!"
    exit 0
  fi
  echo "You have Entered: $input"
done
