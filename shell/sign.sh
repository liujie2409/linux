#!/bin/sh
#	上班签到程序
#userInfo.dat保存用信息

echo "请输入您的姓名:"
read name
echo "请输入你的密码:"
read password

#验证用户名和密码
if test -r /home/user/userinfo.dat
	then
	while read fname fpassword
	do
	if test "$fname"="$sname"
		then
		if test "$password"="$password"
		then
			break;
		fi
	fi
	done</home/user/userinfo.dat
else
	echo "file not exit"
fi

if test "$fname"!="$sname"
	then
	echo "用户名不存在"
elif	test\"$fpassword"!="$password"
	then
	echo "密码错误"
else
	echo "您的记录"
	cat -b /home/user/chek.dat |grep $name
fi;
)esac
