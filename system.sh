#!/bin/bash

if [ $1 -eq 1 ];
then
printf "\n\t\t\t\033[1;7;36mSYSTEM STATUS COMMANDS\033[0m\n\n\n  1 -- Display the current date and time
  2 -- Current disk usage
  3 -- List current local and enviornmental
  4 -- Display process status information
  5 \033[1;31m-- Exit Program\033[0m
" | more
else
printf "\n\t\t\t\033[1;7;36mSYSTEM STATUS COMMANDS\033[0m\n\n\n  1 -- Display the current date and time
  2 -- Current disk usage
  3 -- List current local and enviornmental
  4 -- Display process status information
  5 \033[1;31m-- Quit -- Return to Main Menu\033[0m
" | more
fi
printf  "\n\033[1;35mEnter your choice:\033[0m " 
read a

while ((1))
do
if [ "$a" -eq 1 ];
then
    echo ""
    date +"%d/%h/%Y %R"
    echo ""
elif [ "$a" -eq 2 ];
then
    echo ""
    df | more
    echo ""
elif [ "$a" -eq 3 ];
then
     echo ""
     printenv | more
     echo ""
elif [ "$a" -eq 4 ];
then
    echo ""
    ps -e | more
    echo ""
elif [ "$a" -eq 5 -a "$1" -eq 0 ];
then
    printf "\033[1;32mOpening main menu\033[0m"
    bash anim.sh
    bash myhelp.sh
    exit 0
elif [ "$a" -eq 5 -a "$1" -eq 1 ];
then
    printf "\033[1;31mExiting the program\033[0m"
    bash anime.sh
    exit 
else    
    echo -e "\033[1;33mSelect a valid option !\033[0m"
fi
echo -ne "\033[1;34mSelect from above options :\033[0m "
read a
done