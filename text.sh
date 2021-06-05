#!/bin/bash
if [ $1 -eq 1 ];
then
printf "\n\t\t\t\033[1;7;36mTEXT PROCESSING COMMANDS\e[1;31m(Expert Mode)\e\033[0m\n\n\n  1 -- Search a file for a pattern
  2 -- Count lines, words, and characters in specified file
  3 -- Display line differences between two files
  \033[1;31m4 -- Exit the program\033[0m
" | more
else
printf "\n\t\t\t\033[1;7;36mTEXT PROCESSING COMMANDS\033[0m\n\n\n  1 -- Search a file for a pattern
  2 -- Count lines, words, and characters in specified files
  3 -- Display line differences between two files
  \033[1;31m4 -- Quit -- Return to main Menu\033[0m
" | more
fi
printf  "\n\033[1;35mEnter your choice:\033[0m " 
read opt

while ((1));
do
if [ "$opt" -eq 1 ];
then
    printf "Enter file to check for pattern : "
    read filename
    while [ ! -f $filename  ]
    do 
      printf  "\033[1;33mEnter Valid Path:\033[0m "
      read filename
    done  
    printf  "Enter pattern to search for :"
    read pattern
    printf "\033[1;32mMathed lines :\033[0m\n"
    grep -iE $pattern $filename
    printf "\n"


elif [ "$opt" -eq 2 ];
then
  printf "Enter filename : "
  read f
  for file in $f 
  do
  if [ ! -f $file  ]
   then
    printf  "\033[1;33m$file is Invalid FIle:\033[0m "
  else
    echo -e "\n\033[1;32mFor $file is :\033[0m"
    printf  "Number of line : "
    wc -l $file | cut -d " " -f1
    printf  "Number of words : "
    wc -w $file | cut -d " " -f1
    printf  "Number of characters : "
    wc -c $file | cut -d " " -f1
  fi
  done
  echo "" 

elif [ "$opt" -eq 3 ];
then
  printf  'Enter the file1: '   
  read file1
  while [ ! -f "$file1"  ]
   do 
    printf "\033[1;33mEnter Valid Path:\033[0m "
    read file1
   done  
  printf 'Enter the file2: ' 
  read file2
  while [ ! -f "$file2"  ]
   do 
    printf "\033[1;33mEnter Valid Path:\033[0m "
    read file2
   done  
    diff $file1 $file2 | less --prompt="Press q to exit"
    printf "\n"


elif [ "$opt" -eq 4 -a $1 -eq 0 ];
then
    printf "\033[1;32mOpening main menu\033[0m"
    bash anim.sh
    bash myhelp.sh
    exit


elif [ "$opt" -eq 4 -a $1 -eq 1 ];
then
    printf "\033[1;31mExiting the program\033[0m"
    bash anime.sh
  exit


else
    echo -e "\033[1;33mSelect a valid option !\033[0m"
fi
echo -ne "\033[1;34mSelect from above options :\033[0m "
read opt
done
