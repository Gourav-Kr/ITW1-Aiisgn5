if [ "$1" == "1" ]
 then
  printf "\n     \t\t   \033[7;1;36mFILE AND DIRECTORY MANAGEMENT COMMANDS\e[1;31m(Expert Mode)\e\033[0m      \n\n"
  printf "  1 -- Display the contents of a file\n"
  printf "  2 -- Remove a file\n"
  printf "  3 -- Copy a file\n"
  printf "  4 -- List a file\n"
  printf "  5 -- Size of a file\n" 
  printf "  \033[1;31m6 -- Exit the program\033[0m\n"
else  
printf "\n     \t\t   \033[7;1;36mFILE AND DIRECTORY MANAGEMENT COMMANDS\033[0m      \n\n"
printf "  1 -- Display the contents of a file\n"
printf "  2 -- Remove a file\n"
printf "  3 -- Copy a file\n"
printf "  4 -- List a file\n"
printf "  5 -- Size of a file\n"
 printf "  \033[1;31m6 -- Quit -- Return to main Menu\033[0m\n"
 fi


printf  "\n\033[1;35mEnter your choice:\033[0m " 
read choice


while [ 1 ]
do
while [ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 -a $choice -ne 4 -a $choice -ne 5 -a $choice -ne 6 ]
   do 
     printf "\033[1;33mSelect a valid option !\033[0m\n"
     echo -ne "\033[1;34mSelect from above options :\033[0m "
     read choice
   done


if [ $choice -eq 1 ]
 then
  printf  'Enter the Path of File which you want to view: '   
  read f
  for file in $f 
  do
  while [ ! -f $file  ]
   do
    printf "$file :\n" 
    printf  "\033[1;33mInvalid FIle:\033[0m "
   done
  echo -e "\033[1;32\mcontent of $file :\033[0m\n\n `cat $file`" | less -r --prompt="Press q to exit"
  done
  echo "" 
 fi 


if [ $choice -eq  2 ]
 then 
  printf  'Enter the Path of File which you want to remove: '   
  read file
  while [ ! -f $file  ]
   do 
    printf "\033[1;33mEnter Valid Path:\033[0m "
    read file
   done  
  rm $file
  printf "$file removed\n"
  echo ""
 fi


if [ $choice -eq 3 ]
 then 
  printf  'Enter the Path of File which you want to copy: '   
  read file1
  while [ ! -f "$file1"  ]
   do 
    printf "\033[1;33mEnter Valid Path:\033[0m "
    read file1
   done  
  printf 'Enter the Destination Path: ' 
  read file2
  while [ ! -d "$file2"  ]
   do 
    printf "\033[1;33mEnter Valid Path:\033[0m "
    read file2
   done  
  cp $file1 $file2 
  printf "$file1 copied to $file2\n"
fi 


if [ $choice -eq  4 ]
 then 
  printf  'Enter the Path of File which you want to list: '   
  read file
  ls  -l $file
  echo ""
 fi


if [ $choice -eq  5 ]
 then 
  printf  'Enter the Path of File: '   
  read f
  for file in $f 
  do
  while [ ! -f $file  ]
   do
    printf "$file :\n" 
    printf  "\033[1;33mInvalid FIle:\033[0m "
   done
  echo -e "\033[1;32mSize Of $file is :\033[0m\n\n `ls -hs $file`" | less -r --prompt="Press q to exit"
  done
  echo "" 
 fi 


if [ $choice -eq 6 ]
 then 
  if [ "$1" == 1 ]
   then 
    printf "\033[1;31mExiting the program\033[0m"
    bash anime.sh
    exit 
  else
   printf "\033[1;32mOpening main menu\033[0m"
   bash anim.sh
   bash myhelp.sh
   exit
   fi
fi
printf "\033[1;34mSelect from above options :\033[0m"
   read choice      
done
