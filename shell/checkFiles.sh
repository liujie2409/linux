#!/bin/sh

echo "检查文件是否存在"

if [ -f /var/log/messages ]
	then
	echo "存在"
else
	echo "不存在"
fi
echo "结束"
