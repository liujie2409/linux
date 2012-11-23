#!/bin/sh
#测试环境变量
echo "当前用户目录是:$HOME"
echo "当前所在目录是:$PWD"
echo "当前用户的登录名是:$LOGNAME"
echo "当前的路径是:$PATH"
echo "当前的终端类型是:$TERM"
echo "当前的日期是:"+`date`"+%y%M%d"
echo "当前目录的大小是:"
du 
echo "当前的执行参数个数是:$#"
echo "当前的执行的进程是:$$"
echo "当前执行的返回状态时$?"
echo "当前执行的参数是$@"
echo "当前执行的程序名称是:$0"
echo "当前执行的类型是:$TERM"
echo "当前的用户个数是:" `who|wc -l`
echo "当前文件个数是:" `ls|wc -l`
