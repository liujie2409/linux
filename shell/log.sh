#!/bin.sh

LOG_DIR="/var/log"
ROOT_UID=0
LINES=50
E_EXCD=60
E_NOTROOT=67

#must run as root

if [ "$SUID" -ne "$ROOT_UID" ];
	then
		echo "must be root to run this script"
		exit $E_NOTROOT
fi

if [ -n "$1" ]
	then
	lines=$1
else
	line=$LINES
fi




