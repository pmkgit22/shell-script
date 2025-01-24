#!/bin/bash
#echo "This is a test mail & Date $(date)" | mail -s "message" info@joindevops.com

TO_ADRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

echo " ALL Arguments : $@"