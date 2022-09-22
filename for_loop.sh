#!/bin/bash

MYUSER="Ansible Docker AWS MongoDB"

for usr in $MYUSER
do
	sleep 2
	echo "Adding user $usr"
	useradd $usr
	id $usr
	echo "--------------------------"
	echo
done
