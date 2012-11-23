#!/bin/sh
util
echo "List Directory......1"
echo "Chanage Directory...2"
echo "Edit file...........3"
echo "remove File.........4"
echo "exit Menu ..........5"
echo "please input your choice"

read CHOICE
do
case $CHOICE in
	1)ls;;
	2)echo "enter Target direcotry "
	  read DIR
	  cd $DIR
	 ;;
	3)echo "enter fileName"
		read FILENAME
		vi $FILENAME
		;;
	4)echo "ENTER FILENAME"
		read $FILENAME
		rm $FILENAME
		;;
	5)echo "goodBye"
		exit
		;;
esac
done

	
