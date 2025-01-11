#!/bin/bash
USERID= $(id -u)
R="\e[31m"
N="\e[0m"
B="\e[33m"
echo "fuck"

if [ $USERID -ne 0 ];
then
echo -e "$R this is in if condition"
fi