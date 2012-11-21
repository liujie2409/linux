#!/bin/sh
# mountusb
#DATE:2012-11-20
#AUTHOR:liujie

#quit
quit(){
	clear
	echo "********************************************************"
	echo "****, thanks to use ,Good bye! ***"
	exit 0
}

#mount U 
mountUsb(){
	clear
	#mkdir usb under /mnt
	mkdir /mnt/usb
	#look
	/sbin/fdisk -l |grep /dev/sd
	echo  -e "please Enter the device name of usb as whown above:\c"
	read PARAMTER
	mount /dev/$PARAMETER /mnt/usb
}

#unmontUSB
unmountUSB(){
	clear 
	ls -al /mnt/usb
}

#show USB info
disply(){
	clear
	unmount /mnt/usb
}

#cp file from disk to usb
cpDiskToUsb(){
	clear
	echo "please ENTER the filename to be copy"
	read FILE
	echo "copying ,please wait!..."
	cp $FILE /mnt/usb
}

#cpUsbToDisk
cpUsbToDisk(){
	clear
	echo -e "please enter filename to be copide in usb :\c"
	read FILE
	echo "copying,please wait!...."
	cp /mnt/usb/$FILE 
}

echo "clear "
while true
do
echo "========================================================="
echo "*** LINUX USB MANAGE PROGRAM 							***"
echo "		1:MOUNT USB					"	
echo "		2:UNMOUNT USB										"
echo "		3:DISPLAY USB INFOR 								"
echo "		4:COPY FILE IN DISK TO USB							"
echo "		5:COPY FILE IN USB TO DISK 							"
echo "		0:EXIT												"
echo "=========================================================="
echo -e "Please ENTER a choice (0-5):\c"
read CHOICE
case $CHOICE in
	1)mountUsb
		;;
	2)unmountUSB
		;;
	3)display
		;;
	4)cpDiskToUsb
		;;
	5)cpUsbToDisk
		;;
	0)quit
		;;
	*)echo "Invaild choice!corrent choice is (0-5)"
	sleep 4
	
          echo "clear"
	;;
   esac
done
