#!/bin/bang
DATE=$(date +%F)
LOGDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log
R="\e[31m"
N="\e[0m"
B="\e[34m"
G="\e[32m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_THRESHOLD=1
Message=""

# IFS is internal field seperator that is space

while IFS= read line
 do
 # htis will give disk usage in number format for comaparasion
 Usage=$( echo $line | awk '{print $6}' | cut -d % -f1)
 #this is for partition
 Partition=$( echo $line | awk '{print $1}' )
 # this is to compare disk 
   if [ $Usage -gt $DISK_USAGE_THRESHOLD ] ;
    then
     Message+="High disk usage alert $Partition  : $Usage \n"
   fi   

 done <<<  $DISK_USAGE

echo -e "message : $Message"
#this will call other script for mail format

sh mail.sh "pmk.kumar22@gmail.com" "High fucki hard Disk Usage" "$Message" "fucking Team" " Disk loaded Usage ALert"
