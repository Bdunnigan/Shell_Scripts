#!/bin/bash

USR=$(whoami)

#get the userID and if user is root then exit script
if [[ "${USR}" = root ]]; then
	echo "It is unsafe to run this script as root"
	exit 1;
fi

#make sure the uid is larger than 500 and /etc/passwd exists and permissions allow reading
if [[ "${UID}" -gt 500 ]] && [[ -e "/etc/passwd" ]] && [[ -r "/etc/passwd" ]]; then
	HOME_DIRECTORY=$(grep "${USR}" /etc/passwd | awk 'BEGIN { FS = ":" } ; { print $6 }')
	
	echo "$(du -hc ${HOME_DIRECTORY})"
else
	echo "/etc/passwd either does not exist or you do not have permissions to read it."
	echo "Users with UID over below 500 are not allowed to run this script."
fi





