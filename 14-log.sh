#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
# to checkthe id 
USERID=$(id -u)
LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executing at: $(date)" | tee -a $LOG_FILE


if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR: Please run with root access $N " | tee -a $LOG_FILE
    exit 1
else
    echo -e "$G Your are running with Root $N " | tee -a $LOG_FILE
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo -e "$G  $2  installed.........Nothing to do $N " | tee -a $LOG_FILE
    else
        echo -e " $R $2 is not installed $N " | tee -a $LOG_FILE
        exit 1
    fi
}



dnf list installed  mysql

if [ $? -ne 0 ]
then
    echo -e " $R Mysql is not installed -.....Going to install $N " | tee -a $LOG_FILE
    dnf install mysql &>> $LOG_FILE
    VALIDATE $? "mysql"
else
echo -e " $G No need to installed it is already installed $N " | tee -a $LOG_FILE
fi

dnf list installed  nginx  

if [ $? -ne 0 ]
then
    echo -e " $R nginx is not installed -.....Going to install $N " | tee -a $LOG_FILE
    dnf install nginx
    VALIDATE $? "nginx" &>> $LOG_FILE
else
echo -e " $G No need to installed it is already installed $N " | tee -a $LOG_FILE
fi

dnf list installed  python3

if [ $? -ne 0 ]
then
    echo -e " $R python3 is not installed -.....Going to install $N" | tee -a $LOG_FILE
    dnf install python3 &>> $LOG_FILE
    VALIDATE $? "python3"
else
echo -e "$G No need to installed it is already installed $N" | tee -a $LOG_FILE
fi