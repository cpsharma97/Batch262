#!/bin/bash -x
function myfunct()
{
       $1
}

result = "echo ${RANDOM:0:1}"
if [ $result -eq $1]
then
     echo success
else
     failure
fi
