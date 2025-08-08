#!/bin/bash

# to checkthe id 
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo " ERROR: Please run with root access"
    exit 1
else
    echo " Your are running with Root"
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo " $2 is not installed.........Nothing to do "
    else
        echo " $2 is not installed"
        exit 1
    fi
}


dnf list installed  mysql

if [ $? -ne 0 ]
then
    echo " Mysql is not installed -.....Going to install"
    dnf install mysql
    VALIDATE $? "mysql"
else
echo " No need to installed it is already installed"


dnf list installed  nginx

if [ $? -ne 0 ]
then
    echo " nginx is not installed -.....Going to install"
    VALIDATE $? "nginx"
else
echo " No need to installed it is already installed"


dnf list installed  python3

if [ $? -ne 0 ]
then
    echo " python3 is not installed -.....Going to install"
    dnf install python3
    VALIDATE $? "python3"
else
echo " No need to installed it is already installed"