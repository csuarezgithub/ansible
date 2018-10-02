#!/bin/bash

input="/home/cristian/ansible/output.txt"
while IFS= read -r var
do
  echo "$var"

sshpass -p "C10YTyR10n" ssh-copy-id -o StrictHostKeyChecking=no appmgr@$var
#IP1=$(ping -c 1 "$var" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null
#echo $IP1 >> output.txt

done < "$input"

#IP1=$(ping -c 1 "$input" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null
#echo $IP1

#IP1=$(ping -c 1 "$IP" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null

