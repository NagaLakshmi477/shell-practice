#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo " Sucess: Running with root user" 
else
    echo " Error:Running with normal user"
fi

if [ $? -eq 0 ]; then

    dnf install mysql -y

    echo " mysql installed sucessfully"

else
    echo " mysql not installed"
    exit 1
fi