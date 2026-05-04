#!/bin/bash

echo " all variables passed to the scrpit: $@"
echo " Number of variables passed to the scrpit: $#"
echo " Script Name : $0 "
echo " Current directory : $PWD "
echo " current user : $USER "
echo " Home dir : $HOME "
echo " PID of the script: $$ "
sleep 20 &
echo " PID of the last command in background : $! "