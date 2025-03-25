#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then    
    echo "ERROR:: please run with sudo access"
    exit 1
else 
    echo "u r root user"
fi

yum install mysql -y

if [$? -ne 0 ]
then
    echo "ERROR:: INStalling mysql is failed"
    exit1
else
    echo "Installing MYSQL is Success"
fi
yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing GIT is failed"
    exit 1
else
    echo "Installing GIT is SUCCESS"
fi