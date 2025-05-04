#! /bin/bash
# Bash Script for check uptime & reboot ##
# Author: Zubin Patil
# Created on: 01-05-2025
# Description: Bash script to check the system reboot status and restart if the uptime is more than 10 days ##

last_reboot=$( uptime | awk -F ' ' '{print $3}' )
echo ${last_reboot}
if [ ${last_reboot} -gt 10 ]; then
        echo " the system was rebooted more than 10 days back. Hence the system will be restarted in 2 minutes"
        sudo shutdown -r now
else 
        echo "the system has restarted is less then  10 days"
fi