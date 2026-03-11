#!/bin/bash
#using simple function
#checking file is present or not
check_file (){
  if [ -f $1 ];then
    echo "file is existed :$file"
  else
    echo "does not existed " 
  fi
}

#checking dir is present or not 
check_folder(){
  if [ -d $1 ];then
    echo "folder is existed  : $folder "
  else
    echo "folder is not existed"
  fi
}

#checking number is odd or even 

check_num(){
  if (( $1 % 2 == 0)) ;then
    echo " number is even"
  else
    echo "number is odd " 
  fi

}
#main program
read -p "enter file name : " file
check_file "$file"
read -p "enter dir name : " dir
check_folder "$dir"
read -p "enter the number : " num
check_num "$num"