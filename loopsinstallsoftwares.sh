#!/bin/bash
USERID=$(id -u )
DATE=$(date +%F)
LOGDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$SCRIPT_NAME-$DATE.log
R="\e[31m"
N="\e[0m"
B="\e[33m"
echo "The user Id is : $USERID"

if [ $USERID -ne 0 ];
 then
  echo -e "$R ERROR: this is not super user Run with super user"
  exit 1
 #else
#echo -e " $B MESS: this is root user good"
fi
#echo -e "$N Message :still continuing with out exit ID: $USERID"
Validate(){
 if [ $1 -ne 0 ];
  then
  echo -e"$R $2 installation failed"
  exit 1
  else
  echo -e"$B $2 succesfully installed"
fi

}

for i in $@
do
 yum list installed $i &>>$LOGFILE

  if [ $? -ne 0 ];
  then
  echo -e "$R $i Not installed $B Installing the software:"
  yum install $i -y &>>$LOGFILE
  Validate $? "$i"
  else
  echo -e "$R $i software is already installed"
fi
 
done