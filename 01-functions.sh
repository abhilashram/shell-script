#!/bin/bash


USERID=$( id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2.... Failed"
    else
        echo "$2.... Success"
    fi 
    
}

if [ $USERID -ne 0 ]
then
    echo "You are root user"
    exit 1 
else
    echo "You are Super user"
fi 

dnf install mysql -y 
VALIDATE $? "Installing MYSQL"


dnf install git -y 
VALIDATE $? "Installing Git"

