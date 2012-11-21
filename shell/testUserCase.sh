#!/bin/sh
#测试用户信息

USER="${whoami}"
echo "user is :$USER"
case $USER in
	root)
		echo "you are root"
		;;
	test)
		echo "you are test"
		;;
	*)	echo "you are not a mangaer"
		;;
esac
