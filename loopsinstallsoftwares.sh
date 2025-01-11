#!/bin/bash
USERID=$(id -u)
R="\e[31m]"
N="\e[0m]"
if [$USERID -ne 0 ]
then
echo -e "$R Error: :Please try to install with root access."
exit 1
fi