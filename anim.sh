
count=0
total=8
echo -e ""
while [ $count -lt $total ]; do
  sleep 0.1 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\033[1;7;37m \r%d.%d%% \033[0m" $(( $count*100/$total )) 
done
sleep 0.5
clear
exit 0