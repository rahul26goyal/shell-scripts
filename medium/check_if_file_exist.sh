#!/usr/bin/env bash

check_file_exist()
{
  if [ $# -ne 1 ]
  then
    echo "check_file_exist expects only one argumet. File path got $# : [ $@ ]"
    exit 1
  fi

  input_file=$1
  #echo "Checking file : $input_file"
  if [ -f $input_file ] # -e to check if exists
  then
    echo "true"
  else
    echo "false"
  fi
}

result=`check_file_exist $0`
echo "File $0 exist: $result"

invalid_path="/usr/invalid_apths"

result=`check_file_exist $invalid_path`

echo "File $invalid_path exist: $result"
