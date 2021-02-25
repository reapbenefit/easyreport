#!/bin/bash
GPS=0
noGPS=0

for image in Input/*; do 
	echo -e "\n"$image 
	info=$(./RPexif "$image") 
	
	Time_Stamp=$(echo "$info" | tail -n +10 | head -n 1 )
	echo -e "$Time_Stamp\n"
	GPS_info=$( echo "$info" | tail -n +26 | head -n +4) 
	
	echo "$GPS_info"
	if [  "$( echo "$GPS_info" | tail -n +26 | head -n +4 | awk '{print $4;}' | head -n 1)" == "0.000000" ];
	then
		noGPS=$(($noGPS+1))
	else
		GPS=$(($GPS+1))
	fi

done

echo -e "\nTotal Images: " $(($noGPS+$GPS))
echo "Images with GPS Data:    "$GPS
echo "Images without GPS data: "$noGPS

