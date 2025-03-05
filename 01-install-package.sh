#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Please run this script with room access "
    exit 1 
else 
    echo "You are a Super User"
fi 

for i in $@
do 
    echo "Your packages: $i"
done 
