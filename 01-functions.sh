#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log



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

dnf install mysql -y &>>LOGFILE
VALIDATE $? "Installing MYSQL"


dnf install git -y &>>LOGFILE
VALIDATE $? "Installing Git"

