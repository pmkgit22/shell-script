#!/bin/bash
DATE=$(date +%x_%r)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

echo "we are in functionscript name $SCRIPT_NAME"

#Giving Colors
R="\e[31m"
G="\e[321m"
N="\e[0m"

#this function should validate previous command in form user about status
Validate(){

echo "we are in function and argumentone $1"
echo "we are in function and argtwo  $2"
}
USERID= $(id -u)

echo "this is user:  $USERID"

#if[ $USERID -ne 0 ]
#then
#echo "ERRORed: this is first fuck"

#else
#echo "torey : this is bokkaaa"
#fi

echo "this nani first line" $USERID  $DATE &>>$LOGFILE
Validate $? " his is first line locally"

echo "this nani Second fuck line" $DATE &>>$LOGFILE

Validate $? " his second calling function"

