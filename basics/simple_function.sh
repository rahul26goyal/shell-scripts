#!/usr/bin/env bash

# Write a script to demo a simple function

echo "The usage of  this progam is:"
echo "To demonstrate how to  call a function and pass Paramenetrs to it.."

_usage() {
  if [ $# -eq 0 ]
  then
    echo "_usage called with : No argument"
  else
    echo "_usage called with: $@"
  fi
}
_usage

_usage 1.0 2 3 4 5 "rahul" test