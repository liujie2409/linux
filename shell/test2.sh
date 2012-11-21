#!/bin/sh
#删除某个目录下的文件

for i in $HOME/.Trash/*
do
	rm $i
echo "$i已经被删除"
done
