#!/bin/sh
#-------------------------------------------------
#	删除日志
#-------------------------------------------------

LOG_DIR=/var/log
ROOT_UID=0
SUID=0 
LINES=50
E_XCD=66
E_NOTROOT=67

#--一定要用跟用户运行
if [ "$SUID" -ne "$ROOT_UID" ] ;
	then
	echo "must root run "
	exit $E_NOTROOT
fi

	lines=$LINES

E_WRONGARGS=65

case "$1" in
	"")lines=50;;
	*[!0-91]*) echo "o-9"; exit $E_WRONGARGS;;
	*)lines=$1;;
esac

cd $LOG_DIR

if [ 'pwd' != "$LOG_DIR" ];
	then 
		echo "cannot change to #LOG_DIR"
		exit $E_ECD
fi
	
tail -$lines messages>mesg.tmp
mv mesg.tmp messages

cat /dev/null>wtmup
echo "logs cleamed up ."
exit
