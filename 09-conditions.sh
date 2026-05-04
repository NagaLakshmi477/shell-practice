#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo " Sucess: Running with root user" 
else
    echo " Error:Running with normal user"
fi

if [ $? -eq 0 ]; then


    dnf install mysqlu
    if [ $? -eq 0 ];then

    echo " mysql installed sucessfully"
    fi

else
    echo " mysql not installed"
    exit 1
fi