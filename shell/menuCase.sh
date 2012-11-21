#!/bin/sh
#	case菜单管理
util
	echo "列表目录:1"
	echo "改变目录:2"
	echo "编辑文件:3"
	echo "移动文件:4"
	echo "退出系统:5"
	
	read choice
	test $choice=5
do
	case $choice in
		1)ls;;
		2)echo "输入目录";;
			read	dir
			cd		dir
		    ;;
		3) echo "输入文件名"
			read file
			vi $file
			;;
		4) echo "输入文件名"
			read file
			rm file
		5) echo "退出系统"
		;;
		*) echo "请输入出"
	esac
done

