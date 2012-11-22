#!/bin/sh
#log roll
#limit size of log
# 4096 k
BLOCK_LIMIT=8

MYDATE=`date+%d%m`
LOGS="/var/log1/ /var/log2"
for LOG_FILE in $LOGS
do
	if [ -f $LOG_FILE ];then
		F_SIZE='du  -a $LOG_FILE|cut -f1'
	else
		echo "not find ">&2
	continue
	fi

	fi [ "$F_SIZE" -gt "$BLOCK_LIMIT" ];then
		>$LOG_FILE
		chgrp admin $LOG_FILE$MYDATE
	fi
done	
