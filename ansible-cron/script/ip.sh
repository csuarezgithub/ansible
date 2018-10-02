#!/bin/bash

input="/home/cristian/ansible/servers.txt"
while IFS= read -r var
do
echo "$var"
IP1=$(ping -c 1 "$var" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null

if [ -z "$IP1" ]
then
      #IP1="errorconectividad"
      #echo "\$IP1 is empty"
      echo errorconectividad >> output.txt
else
      #echo "\$var is NOT empty"
      echo $var ansible_host=$IP1 ansible_user=appmgr >> output.txt
fi

done < "$input"

#IP1=$(ping -c 1 "$input" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null
#echo $IP1

#IP1=$(ping -c 1 "$IP" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null


