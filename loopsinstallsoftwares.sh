#!/bin/bash
USERID=$(id -u )
R="\e[31m"
N="\e[0m"
B="\e[33m"
echo "The user Id is : $USERID"

if [ $USERID -ne 0 ];
 then
  echo -e "$R ERROR: this is not super user"
  exit 1
 else
  echo -e " $B MESS: this is root user good"
fi
echo -e "$N Message :still continuing with out exit ID: $USERID"
