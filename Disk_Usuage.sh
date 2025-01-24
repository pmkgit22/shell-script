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

# IFS is internal field seperator that is space

while IFS= read line
 do
  echo " the output is : $line"

 done <<<  $DISK_USAGE
