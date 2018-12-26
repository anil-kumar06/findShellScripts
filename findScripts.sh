#!/bin/bash

NC='\033[0m'
UBlue='\033[4;34m'

COUNT=0

printf "\n$UBlue\r%20s$NC\n" "Scripts in Current directory :"
for file in *
do
  file $file | grep "shell script" >/dev/null
  if [ $? -eq 0 ];then
    ls -l $file
    COUNT=$((COUNT+1))
  fi
done
 
printf "\n$UBlue\r%20s$NC : $COUNT\n\n" "Number of scripts in Current directory "
#echo $COUNT
exit 0
