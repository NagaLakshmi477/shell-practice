#!/bin/bash


echo "all variables passed to the scrpit: $@"
echo " number of variables passed in the scrpit: $#"
echo " Scrpit name: $0"
echo " Present Working directory: $PWD"
echo " User Home Directory: $HOME"
echo " user login : $USER"
echo "  PID is : $$"
sleep 10 &
echo " last command PID: $!"
