#!/usr/bin/env bash

# Implement a dictrionary to demo the use of assciative array in basg

declare  -A dict
echo "Empty Dict: $dict"

#dict=([Starte]=Capital)
#echo "Header Dict: $dict"

dict["karnataka"]="Bangalore"
dict["TamilNadu"]="Chennai"
dict["Odisha"]="Bhubaneswar"

echo "Iterating Capitals:"
for val in "${dict[@]}";
do
  echo "Capital: $val"
done

: '
for val in "${!dict[@]}";
do
  echo "State: $val"
done
'


echo "All Values: ${dict[@]}"