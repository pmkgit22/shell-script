#!/bin/bash
USERID=$(id -u )
R="\e[31m"
N="\e[0m"
B="\e[34m"
G="\e[32m"
Y="\e[33m"
MAILLOGDIR=/home/centos/mailconfig-logs
SCRIPT_NAME=$0
LOGFILE=$MAILLOGDIR/$0-$DATE.log



if [ $USERID -ne 0 ];
 then
 echo -e "$R ERROR : please login with root user$N"
 else
  yum update -y --exclude=kernel* &>>$MAILLOGDIR
  yum -y install postfix cyrus-sasl-plain mailx &>>$MAILLOGDIR
  systemctl enable postfix &>>$MAILLOGDIR
  systemctl restart postfix &>>$MAILLOGDIR
  fi
  echo " you can go with VI editor"