#!/bin/bash

check_func(){
  if [[ "$1" =~ ^[0-9]+$ ]] && [ "$1" -lt 20 ]; then
    echo "hi boss"
  else
    echo "less"
  fi
}
#main program
echo "enter the number : "
read num
check_func "$num"  