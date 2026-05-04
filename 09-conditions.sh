#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo " Sucess: Running with root user" 
else
    echo " Error:Running with normal user"
fi

dnf install mysq -y
    if [ $? -eq 0 ];then

        echo " mysql installed sucessfully"
    else
        echo " failed to install "
        exit 1
    fi

