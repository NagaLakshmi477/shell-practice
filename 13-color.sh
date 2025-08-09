#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# to checkthe id 
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR: Please run with root access $N "
    exit 1
else
    echo -e "$G Your are running with Root $N "
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo -e "$G  $2  installed.........Nothing to do $N "
    else
        echo -e " $R $2 is not installed $N "
        exit 1
    fi
}



dnf list installed  mysql

if [ $? -ne 0 ]
then
    echo -e " $R Mysql is not installed -.....Going to install $N "
    dnf install mysql
    VALIDATE $? "mysql"
else
echo -e " $G No need to installed it is already installed $N "
fi

dnf list installed  nginx

if [ $? -ne 0 ]
then
    echo -e " $R nginx is not installed -.....Going to install $N "
    dnf install nginx
    VALIDATE $? "nginx"
else
echo -e " $G No need to installed it is already installed $N "
fi

dnf list installed  python3

if [ $? -ne 0 ]
then
    echo -e " $R python3 is not installed -.....Going to install $N"
    dnf install python3
    VALIDATE $? "python3"
else
echo -e "$G No need to installed it is already installed $N"
fi