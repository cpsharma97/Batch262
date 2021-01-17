#!/bin/bash -x
read -p "enter the number to convert " number
feetToInch=$((($number*12)))
inchToFeet=$((($number/12)))
feetToMeter=$((($number/3)))
meterToFeet=$((($number*3)))
case "$number" in
     $feetToInch
    echo "feetToInch"
      ;;
     $inchToFeet
    echo "inchToFeet"
     ;;
      $feetToMeter
     echo "feetToMeter"
     ;;
    $meterToFeet
    echo "meterToFeet"
     ;;
    $*
    echo "*"
esac
