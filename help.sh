#!/bin/bash
clear
printf "\n\t\t\t  \033[4;1;103m \e[1;30m-----ITW FINAL PROJECT-----\033[0m\n\n\033[3;1;34m->To perform any task just choose the options from the given menu<-\033[0m\n
1: In File Menu you will find commands like ls, cat, cp etc.
2: In System Status Menu you will find commands like ps, df, date, printenv
3: In Text Menu you will find commands like grep, diff, wc\n"

echo -e "\n\e[1;95mAuthor : Gourav Kumar \e[0m"

printf "\n\n \t\t\e[5;1;91mPress any key to go back to main program\e[0m\n"
read opt
printf "\033[1;32mOpening main menu\033[0m"
bash anim.sh
clear
bash myhelp.sh
