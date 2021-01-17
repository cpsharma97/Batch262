#!/bin/bash
for file in `ls *.log.1`;
do
	fileName=`echo $file | awk -F. '{ print $1 "-" }'`;

	#newFile=$fileName$todayDate`date +"%d%m%Y"`.1;

	echo $fileName$todayDate`date +"%d%m%Y"`.1;
done



