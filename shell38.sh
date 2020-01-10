#!/bin/bash
#https://www.toutiao.com/i6759476744341684739/
#使用函数循环写menu脚本
function menu {
	clear
	echo
	echo -e "\tSys Admin Menu\n"
	echo -e "\t1. Display disk space"
	echo -e "\t2. Display logged on users"
	echo -e "\t3. Display memory usage"
	echo -e "\t0. Exit program\n\n"
	echo -en "\tEnter option:"
	read -n 1 option
}

function diskspace {
	clear 
	df -k
}

function whoseon {
	clear
	who
}  

function menusage {
	clear
	cat /proc/meminfo
}
#while [ 1 ] 等价于 while true
while [ 1 ]
do
	menu
	case $option in
	0) 
		break;;
	1) 
		diskspace;;
	2)
		whoseon;;
	3)
		menusage;;
	*)
		clear
		echo "Sorry, wrong selection";;
	esac
	echo -en "\nHit any key to continue"
	read -n 1 line
done
clear
