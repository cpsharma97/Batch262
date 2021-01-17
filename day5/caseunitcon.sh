#!/bin/bash
echo "with 1 Feet to Inch"
echo "With 2 Feet to Meter"
echo "With 3 Inch to Feet"
echo "With 4 Meter to Feet"
read var
read feet
feetToInch=$(( ($feet*12) ))
feetToMeter=$(( ($feet*6) ))
case $var in
	1)	echo "Feet to Inch" $feetToInch
		;;
	2)	echo "Feet to Meter" $feetToMeter
		;;
	*)	echo "Happy"
esac
