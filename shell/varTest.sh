#!/bin/sh
#测试环境变量
echo "当前用户目录是:$HOME"
echo "当前所在目录是:$PWD"
echo "当前用户的登录名是:$LOGNAME"
echo "当前的路径是:$PATH"
echo "当前的终端类型是:$TERM"
echo "当前的日期是:"
date
echo "当前目录的大小是:"
du 
