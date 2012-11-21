#!/bin/sh
echo "检查文件是否存在"

if [ -f /var/log/message ]
	then
	echo "文件存在"
fi
echo "检查结束"

