#!/bin/bash

#checking file is present or not
read -p "enter file name: " file
if [ -f $file ];then
  echo "file is existed :$file"
else
  echo "does not existed " 
fi

#checking dir is present or not 
read -p "Enter folder path : " folder
if [ -d $folder ];then
  echo "folder is existed  : $folder "
else
   echo "folder is not existed"
fi

#checking number is odd or even 

read -p "enter the number : " num
if (( num % 2 == 0)) ;then
  echo " number is even : $num"
else
  echo "number is odd " 
fi