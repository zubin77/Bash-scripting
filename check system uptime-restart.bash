#! /bin/bash
# Bash Script for check system uptime & reboot if its more than 'n' no of days ##
# Author: Zubin Patil
# Created on: 01-05-2025
# Description: Bash script to check the system reboot status and restart if the uptime is more than 10 days ##

#! /bin/bash
# Storing the first field value(seconds) from /proc/uptime in a variable uptime_seconds
uptime_seconds=$(sudo cut -d '.' -f '1' /proc/uptime)
# Calculating the system uptime in days by dividing the uptime_seconds by 86400(no of seconds in a day)
uptime_days=$(( $uptime_seconds / 86400 ))
# Print the no of days since the last reboot
echo ${uptime_days}
if [ "${uptime_days}" -gt 10 ]; then
        echo "The system was rebooted more than 10 days back. Hence the system will be restarted in 2 minutes"
        sudo shutdown -r +2
else 
        echo "the system has restarted is less then 10 days. No reboot required"
fi
