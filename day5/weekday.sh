#!/bin/bash -x
var=$(( (RANDOM%7) +1 ));
case $var in
        1)      echo "Sunday"
                ;;
        2)      echo "Monday"
                ;;
        3)      echo "Tuesdat"
                ;;
        4)      echo "Wednesday"
                ;;
        5)      echo "Thursday"
                ;;
        6)      echo "Friday"
                ;;
        *)      echo "Saturdat"
esac

