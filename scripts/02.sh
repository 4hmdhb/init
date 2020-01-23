#!/bin/bash
read -p "Which user would you like to delete: " USER

IF_EXISTS=`cat /etc/passwd | grep $USER`
if [ "$IF_EXISTS" != "$NULL" ]
then
	sudo passwd -l $USER
	if [ "$(pgrep -u $USER)" != "$NULL" ]
	then
		sudo kill -9 $(pgrep -u $username)
	fi
	sudo userdel -r $username
	echo "$USER WAS SUCCESSFULLY DELETED)"
else
	echo "$USER DOES NOT EXIST"
fi
