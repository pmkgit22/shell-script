#!/bin/bash
DATE=$(date +%x_%r)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

#Giving Colors
R="\e[31m"
G="\e[321m"
N="\e[0m"

#this function should validate previous command in form user about status
Validate(){

if [ $1 -ne 0]
then
echo -e "$2 --- $R sucess"

else
echo -e " $2---- $G  failuree"

fi
}
USERID= $(id -u)

if[ $USERID -ne 0 ]
then
echo "ERRORed: this is first fuck"

else
echo "torey : this is bokkaaa"
fi

echo "this nani first line" $DATE &>>$LOGFILE
Validate $? " his is first line locally"

echo "this nani Second fuck line" $DATE &>>$LOGFILE

Validate 