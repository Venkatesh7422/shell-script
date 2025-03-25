#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then    
    echo "ERROR:: please run with sudo access"
    exit 1
else 
    echo "u r root user"
fi