#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo " Sucess: Running with root user" 
else
    echo " Error:Running with normal user"
fi

dnf list installed  nginx

if [ $? -ne 0 ]; then
    echo " Nginx is not installed previously "
    echo " Going to install"
    dnf install nginx -y
    if [ $? -eq 0 ];then

        echo " Nginx installed sucessfully"
    else
        echo " failed to install "
        exit 1
    fi

else
    echo " Nginx already installed "
     
fi




