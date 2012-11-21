#!/bin/sh
#用户日志管理
# limit size of log
# 4096k

BLOCKLIMT=8
MYDATE='date+%d%m'

#list of logs to check ...yours whill be different!
LOGS="/var/spool/audlog /var/spool/networks/netlog /etc/dns/named_log"
for LOG_FILE in $LOGS
	do
	if [ -f $LOG_FILE ];then
	 F_SIZE='du -a $LOG_FILE| cut -fl'
	else
		echo "basename $0 connot find $LOG_FILE ">&2
		#could exists here
		continue
	fi

	if [ "$F_SIZE -gt "$BLOCK_LIMIT" ];then
		cp $LOG_FILE  $LOG_FILE$MYDATE
  >$LOG_FILE
	chgrp admin $LOGFILE$MYDATE
	fi 
	done

