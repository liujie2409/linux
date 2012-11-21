#!/bin/sh
#----------------------------------------
# 	测试case语句
#---------------------------------------

echo "add"
echo "update"
echo "delte"
read choice
case $choice in
	a)
		echo "add"
		;;
	d)
		echo "delete"
		;;
	u)	
		echo "update"
		;;
	*)	echo "select"
	;;

esac 

