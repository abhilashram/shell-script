#!/bin/bash

USERID=$( id -u)

if [ $USERID -ne 0 ]
then
    echo "You are root user"
    exit 1 
else
    echo "You are Super user"
fi 

dnf install mysql -y 

if [ $? -ne 0 ]
then 
    echo "Installing MYSQL.... Failed"
else
    echo "Installing MYSQL.... Success"
fi 

dnf install git -y 

if [ $? -ne 0 ]
then 
    echo "Installing Git ....Failed"
else
    echo "Installing Git ....Success"
fi 

