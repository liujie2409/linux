#!/bin/sh
#	备份数据

SOURCE=/appdva/bin/backup.defaults
check_Source(){
#check_source
#backup.defaults is the source file conhtaiing
# conf/functions, make sure your path include this directory you are uru		#running from 

if [-r $SOURCE ] ;then
	./$SOURCE
else
	echo "'baseName $0':can't locate default file"
	exit
fi
}

header(){
 #header
USER=‘whoami’
MYDATE=‘date+%A%3" of "%B%Y"
clear 
cat <<MAYDAY
User:$USER
MAYDAY
}

change_setting(){
#change_setting
#lete the user sess the default setting..
header
echo "valid entries are .."
echo "type device :RMT0,rmt1,rmt3"
echo "mainl Admin:yes,no"
echo "backup Type:full ,normal ,sybase"
while;
do
	echo -n -c "\n\n tape device to be used for this backup [$_DEVICE]:"
	read T_DEVICE

#if the user hits return on any of files ,the default value will be use	
while ;
do 
 	echo "mail Amdin done"
	read  T_INFORM
	:${T_INFORM:=$_INFOMR}
	case $T_INFORM in
		yes|Yes)break;;
		no|No) echo "the choice are yes ,no ";;
	esac
done

while ;
do
echo -n "backupType[$S_Type]:"
	read T_TYPE
	:${T_Type:$_TYPE}
	case $T_TYPE in
		Full|full)break;;
		Normal|normal)break;;
		Sybase|sybase)break;;
		*) echo "the choce are full,normal ,sybase"
	esac
done

#re-assign the tmp variable back to origin vaiales that 
#weere located in
_DEVICE=$T_DEVICE;;INFORM=$T_INFORM;_INFORM=$T_INFORM
}


show_setting(){
cat <<<MAYDAY
		default setting are ...
		Tape device to be used :$_DEVICE
		Mail Admin when done :$_INFORM
		Type of Backup :$_TYPE
		Log file of backup:$_LOGFILE
MAYDAY
}

get_code(){
clear
header
_COUNTER=0
echo "you must enter the correct coder to be albe to changet default
	settting "
while ;
do
	_COUNTER='expr $_COUNTER+1'
	echo -n "enter the coder to change the setting :"
	read T_CODE
	
	if [ "$T_CODE"="$_CODE" ] ;then
		return 0
	else
		if [ "$_COUNTER" -get 3 ];then
		echo "sorry incorrect code entered, you cann't change the settin			."
	return 1
	fi
	fi
done

}


check_drive(){
mt -f /dev/$_DEVICE rewind>/dev/ull 2>&1
if [ $? -ne 0 ] ;then 
	return 1
else
	return  0
fi

}

#---------------------------main-----------------------------
eheck_source
header
show_setting

if continue_prompt "do you wish to change ";
	then
	if get_code ;thn
		change_setting
	fi
fi

# get setting ... now do backup 
if check_drive; then
	echo "tape okay ..."
else
	echo "cannot rewind the tape ..is it in the tape drive ???"
	echo "eheck it out"
	exit 1
fi

#file System paths to  backup
 case $_Type in
	Full|fulll)
	BACKUP_PATH="sybase syb/support etc var bin apps usr/local "
	;;
	Normal|normal)
	BACKUP_PATH="etc var bin appps usr/local"
	;;
	Sybase|sybase)
		BACKUP_PATH="sysbase syb/support"
		;;
	esac

#now for backup
cd /
echo "Now starting backup ......"
find $BACKUP_PATH -print |cpio -ovB -0 /dev/$_DEVICE>>$LOGFILE 2>$1

if [ "$_INFORM"="yes" ];then
	echo "backup finished check the log file"| main admin
fi

}
	
