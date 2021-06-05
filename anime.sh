
count=0
total=8
echo  ""
while [ $count -lt $total ]; do
  sleep 0.1 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\033[1;7;37m \r%d.%d%% \033[0m" $(( $count*100/$total )) 
done
printf "\n\033[1;33mByee :) \033[0m"
sleep 1.2s
clear
exit 1
