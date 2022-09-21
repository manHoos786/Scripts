#!/bin/bash

echo "Welcome $USER on $HOSTNAME"
echo "##################################################"

FREERAM=$(free -m |grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sdal' | awk '{print $4}')

echo "##################################################"
echo "Avilable free RAM is $FREERAM"
echo "##################################################"
echo "Current Load Average $LOAD"
echo "##################################################"
echo "Free ROOT partiotion size is $ROOTFREE"
