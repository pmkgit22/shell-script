#!/bin/bash
#echo "This is a test mail & Date $(date)" | mail -s "message" info@joindevops.com

# Any one can project can call this script

TO_ADRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

echo " ALL Arguments : $@"

FINAL_BODY=$( sed -e "s/TeamName/$TEAM_NAME/g" -e "s/Alert_Type/$ALERT_TYPE/g" -e "s/MESSAGE/$BODY/g"  template.html )

#echo "$BODY & Date $(date)" | mail -s "message" pmk.kumar22@gmail.com
echo "$FINAL_BODY " | mail -s "$SUBJECT" $TO_ADRESS