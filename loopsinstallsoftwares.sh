#!/bin/bash
USERID=$(id -u )
R="\e[31m"
N="\e[0m"
B="\e[33m"
echo "fuck : $USERID"

#!/bin/bash

#userid=0  # Set userid to some value, for testing purposes.

if [ $USERID -ne 0 ]; then
  echo "User ID is not root zero."
else
  echo "User ID is root zero."
fi
