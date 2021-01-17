#!/bin/bash -x
ft=12;
awk "BEGIN {print 42/$ft}"
height=60;
width=40;
area=$(( $height*$width ))
echo "$area"
totalplot=25;
totalarea=$(( $totalplot*$area ))
forConvert=43560;
inAcre=$(( $totalarea/$forConvert ))
awk "BEGIN {print $totalarea/$forConvert}"


