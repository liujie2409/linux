#!/bin/sh
MYDATE=`date+%d%m%y`

LOGFILE=/logs/backup_log.$MYDATE
>$LOGFILE

MYTIME=`date+%d%R`
LOGFILE2=/logs/admin_log.$MYTIME
>$LOGFILE2
