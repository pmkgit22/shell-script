#!/bin/bash
APPLOG_FILES=/home/centos/app-logs
USERID=$(id -u )
DATE=$(date +%F)
LOGDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log
R="\e[31m"
N="\e[0m"
B="\e[34m"

echo -e "$R files before to delete  $APPLOG_FILE $N"
FILES_TO_DELETE=$(find $APPLOG_FILES -name "*.log" -type f -mtime +14)

echo " files to delete : $FILES_TO_DELETE"
