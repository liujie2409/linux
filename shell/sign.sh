#!/bin/sh
#sign 
echo "请输入您的姓名"
read name
echo "请输入您的密码"
read password
#验证用户名和密码
if test -r /home/user/userInfo.dat
then
	while read fname fpasword
	do
	if test "$sname"="$name"
	then
	if test"$password"="$password"
	then
	break;
	fi
	fi
done </home/user/userinfo.dat
fi
if test "$fname"!="$sname"
	then
	echo "用户名不存在"
	elif test "$password!="$password"

