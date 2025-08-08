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

# To check the installed list

dnf list installed  mysql

if [ $? -ne 0 ]
then
    echo " Mysql is not installed -.....Going to install"
    dnf install mysql
    if [ $? -eq 0 ]
    then 
        echo " Mysql is not installed.........Nothing to do "
    else
        echo " Mysql is not installed"
        exit 1
    fi
else
echo " No need to installed it is already installed"


