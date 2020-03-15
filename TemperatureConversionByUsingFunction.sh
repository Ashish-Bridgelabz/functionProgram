#!/bin/bash -x
min_Celsius_Temperature=0
max_Celsius_Temperature=100
min_Farenhiet_Temperature=32
min_Farenhiet_Temperature=212
#Conversion of Celsius to farenhite
function CelsiusToFarenhite()
{
	read -p "enter Celsius Temperature:" CelsiusTemp
	if (($CelsiusTemp>=0 && $CelsiusTemp<=100))
	then
		Farenhite=`echo "scale=4;(($CelsiusTemp*9/5))+32" | bc -l`
			echo "temperature in Farenhit is:"`echo "scale=3; $Farenhite" | bc -l`
	else
			echo "Invalid"
	fi
}
#This calculation is used to conversion of Farenhite to Celsius
#scale is used for decimal value
function FarenhiteToCelsius()
{
	read -p "enter Farenhit Temperature:" FarenhiteTemp
	if (($FarenhiteTemp>=32 && $FarenhiteTemp<=212))
	then
		Celsius=`echo "scale=4;(($FarenhiteTemp-32)) *5/9" | bc -l`
		echo "temperature in Celsius is:"`echo "scale=3; $Celsius" | bc -l`
	else
		echo "invalid"
	fi
}
echo "1.CelsiusToFarenhit"
echo "2.farenhiteToCelsius"
read -p "enter number:" number
	case $number in 
		1)
		CelsiusToFarenhite
			;;
		2)
		FarenhiteToCelsius
			;;
		*)
		invalid
	esac
