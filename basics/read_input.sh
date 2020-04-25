#!/usr/bin/env bash

# Implement a simple program to demo how to read input from user at runtime.

if [ $# -ne 0 ]
then
  echo "No command Line argument required."
  exit 1
fi

echo "Enter something:"
read input

echo "You have enteredt: $input"

