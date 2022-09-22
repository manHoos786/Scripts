#!/bin/bash

echo "---------------------------------------"

#ls /var/run/httpd/httpd.pid $> /dev/null

if [ -f /var/run/httpd/httpd.pid ]
then 
	echo "Htpd is running"
else
	echo "Httpd service is not running, we are trying to start"
	systemctl start httpd
	
	if [ $? -eq 0 ]
	then 
		echo "Httpd service is running"
	else
		echo "There is some problem, Please contact to admin"
	fi
fi
echo "---------------------------------------------"
