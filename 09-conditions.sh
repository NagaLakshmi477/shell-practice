#!/bin/bash


USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo " Running with root user"
else
    echo " Running with normal user"
fi