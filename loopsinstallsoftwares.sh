#!/bin/bash
USERID= $(id -u)
R="\e[31m]"
N="\e[0m]"
B="\e[33m]"
echo "the user id is this  :" $(id -u)
if [ $USERID -ne 0]
 then
  echo -e "$R ERROR: this is not super user"
else
  echo -e " $B MESS: this is root user good"
fi