#!/bin/bash
#made with <3 Lettly, habby, Matty
clear
a=0
now=$(date +"%T")
echo [$now] Start

while :
do
	status="$(./ts3server_startscript.sh status)"
	if [ "$status" = "Server is running" ]
	then
		echo
		echo
		echo
		echo ============================================
		echo
		let "a += 1"
		echo -e Check number: "\033[36;1m$a\033[0m"	
		echo
		echo
		echo
		now=$(date +"%T")
		echo -e "\e[33m[$now]\e[39m" Status "\e[34mOnline\e[39m" 
		echo
		echo ============================================
		sleep 30

	else
		echo
		echo
		echo
		echo ============================================
		echo
		let "a += 1"
		echo -e Check number: "\033[36;1m$a\033[0m\e[39m"
		echo
		echo
		echo
		now=$(date +"%T")
		echo -e "\e[33m[$now]\e[39m" Status "\e[5m\e[31mOffline\e[39m\e[25m" 
		echo
		./ts3server_startscript.sh start
		echo
		now=$(date +"%T")
		echo -e "\e[33m[$now]\e[39m" Server "\e[32mStarted\e[39m"
		echo
		echo ============================================
		sleep 30
	fi
done 