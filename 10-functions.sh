#!/bin/bash

USER_ID=$(id -u)

if [ $? -ne 0 ]; then
    echo " please run with root user "
else
    echo " running with root user "
    exit 1

