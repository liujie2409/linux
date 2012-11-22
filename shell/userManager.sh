#!/bin/sh
# PROGRAMNAME: LINUX USER MANGER 
# DATE:2012-11-20
# USER:liujie

# display linux user Manager menu 

echo "=================================================================="
echo "		LINUX USER MANAGER PROGRAM 				"
echo "		1:addUser						"
echo "          2:deleteUser 						"
echo "		3:addgroup						"
echo "          4:deletegroup						"
echo "		5:editgroup 						"
echo "		6:update Password					"
echo "		0:exit							"
echo "==================================================================="

while [ true ];
	do
		echo "please input your choice 	"
		
		read CHOICE
		case $CHOICE in
				1)
					echo "addUser"
					;;
				2)
					echo "deleteUser"
					;;
				3)	
					echo "addgroup"
					;;
				4)
					echo "deleteGroup"
					;;
				5)

					echo "editgroup"
					;;
				6)
					echo "update password"
					;;
				0)		
					echo "you will exit system !"
					exit
					;;
				*)
					echo "input error"
					;;
		esac
	done	
