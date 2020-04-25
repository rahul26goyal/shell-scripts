#!/usr/bin/env bash
# Demonstrates Scope of variables.


my_func()
{
  echo "Function called.."
  global_variable="value-2" #this change will be reflected outside the scope
  local_variable="local-1" #this will also become available at global scope.
  func_arguments=$@
  echo "2.Global Variable: $global_variable"
  echo "2. Local Variable: $local_variable"
  echo "Function argument: $func_arguments"
}

global_variable="value-1"
file_arguments=$@
echo "File executed..."
echo "1.Global Variable: $global_variable"
echo "1. Local Variable: $local_variable"
echo "File argument: $file_arguments"
my_func "a1" "a2"
echo "3.Global Variable: $global_variable"
echo "File argument: $@"
echo "Local Variable: $local_variable"

#Test
# ./basics/function_scope.sh  123