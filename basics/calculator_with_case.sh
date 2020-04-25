#!/usr/bin/env bash

# Implement a simple Calculator with [+, -, *, / ] operations support to demonstrate use of `case` in shell.

if [ $# -ne 0 ]
then
  echo "No command Line argument required."
  exit 1
fi

operation="1"

while [ "$operation" != "0" ] #String based comparison.
do
  echo "Enter an operation= (0 to exit):"
  read operation
  case "$operation" in
    "+")
      echo "Enter Two Number to add:"
      read a
      read b
      c=$(( a + b ))
      Echo "Sum of ($a + $b = $c)"
      ;;
    "-")
      echo "Enter Two Number to Subtract:"
      read a
      read b
      c=$(( a - b ))
      Echo "Subtraction of ($a - $b = $c)"
      ;;
    "*")
      echo "Enter Two Number to Multiply:"
      read a
      read b
      c=$(( a * b ))
      Echo "Multiplocation of ($a + $b = $c)"
      ;;
     "/")
      echo "Enter Two Number to Divide :"
      read a
      read b
      if [ $b -eq 0 ]
      then
        echo "Divide By zero is not allowed.. please try again"
      else
        c=$(( a / b ))
        Echo "Division of ($a / $b = $c)"
      fi
      ;;
    *)
      echo "Supported Operation: [+, -, *, /], 0 - for exit."
  esac
done
echo "Good Bye!"