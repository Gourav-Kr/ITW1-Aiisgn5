#!/bin/bash

expmode=1

if [  "$#" -eq  "0"  ]

  then
  expmode=0
  clear
  printf "\n\t\t            \033[7;1;36m UNIX HELP MAIN MENU \033[0m          \n"
 
  printf "\n   \033[1;37m1 \033[0m -- File and Directory Management Commands\n"
  printf "   \033[1;37m2 \033[0m -- Text Processing Commands\n"
  printf "   \033[1;37m3 \033[0m -- System Status Commands\n"
  printf "   \033[1;31m4 \033[0m -- \033[1;31mExit \033[0m \n"

  printf  "\n\033[1;35mEnter your choice: \033[0m"
  read ch                #  choice

  while [[ $ch != 1 && $ch != 2 && $ch != 3 && $ch != 4 ]]
   do
     echo -n "Enter a valid choice: "
     read ch
   done

  if [ $ch == 1 ]
   then
    printf "File management Submenu"
    bash anim.sh
    bash file.sh $expmode

  elif [ $ch == 2 ]
   then
     printf "Text Processing Submenu"
     bash anim.sh
    bash text.sh $expmode

  elif [ $ch == 3 ]
   then
  printf "System Status Submenu"
     bash anim.sh
    bash system.sh $expmode

  else
    printf "\033[1;31mExiting the program\033[0m"
    bash anime.sh
   fi


elif [ "$1" != "help" -a "$1" != "status" -a "$1" != "text" -a "$1" != "file" ]

   then
   clear
    echo -e "\033[1;32mU must enter a valid argument\033[0m"
    printf "\033[1;31mExiting the program\033[0m"
    bash anime.sh
    exit 1

elif [ "$1" == "file" ]
   then
    printf "File management Submenu"
    bash anim.sh
    bash file.sh $expmode

elif [ "$1" == "text" ]
   then
    printf "Text Processing Submenu"
    bash anim.sh
    bash text.sh $expmode

elif [ "$1" == "status" ]
   then
printf "System Status Submenu"
    bash anim.sh
    bash system.sh $expmode

elif [ "$1" == "help" ]
   then
    printf "About the program"
    bash anim.sh
    bash help.sh
fi
