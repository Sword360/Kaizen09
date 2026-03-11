#!/bin/bash

check_func(){

  for i in "$@" ; do
    if (( i%2 == 0 ));then
      echo "number is even "
    else
      echo "number is odd "
    fi
  done
}

#main program
echo "enter the number : " 
read -a num
check_func "${num[@]}"