#!/bin/bash
clear
echo "################# MAC Changer ################"

echo 
echo "1) eth0"
echo "2) Wlan0"
echo
echo "++++++++++++++++++++++++++++++++++++++++++++++"
echo

echo -en "What Interface MAC ID You Want To change: "
read id


if [[ $id = 1 ]]; then
start=$( date +%s )
echo "Changing MAC ID.... Wait..."
sudo ifconfig eth0 down

sudo macchanger -r eth0

sudo ifconfig eth0 up
end=$( date +%s )
timetaken=$(( $start - $end ))
echo 
echo
echo
echo "eth0 MAC ID is Successfully Changed in $timetaken Seconds"

echo "++++++++++++++++++++++++++++++++++++++++++++++"

elif [[ $id = 2 ]]; then

start=$( date +%s )
echo "Changing MAC ID.... Wait..."
sudo ifconfig wlan0 down

sudo macchanger -r wlan0

sudo ifconfig wlan0 up
end=$( date +%s )
timetaken=$(( $start - $end ))
echo 
echo 
echo "Wlan0  MAC ID is Successfully Changed in $timetaken Seconds"
echo "++++++++++++++++++++++++++++++++++++++++++++++"

	if [[ $? = 1 ]]; then
		echo > /dev/null 2>&1

	fi
fi
