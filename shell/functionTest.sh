#!/bin/sh
#测试函数

function sayHello(){
	echo "请输入您的姓名:"
	read NAME
	echo "hello $NAME"
}

echo "程序开始了....."
sayHello
echo "程序结束了"

