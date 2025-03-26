#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F.%H.%M.%S )

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP &>> $LOGFILE"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR:: $2 ... $R INSTALLATION FAILED $N"
        exit 1
    else
        echo -e "$2 ... $G INSTALLATION SUCCESS $N "
    fi       
}

if [ $ID -ne 0 ]
then
    echo -e "$R  ERROR:: RUN thus script with ROOT access $N"
    exit 1
else
    echo -e "$G u r ROOT USER $N"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "INSTALLING MYSQLD"

yum install git -y &>> $LOGFILE
VALIDATE $? "INSTALLING GIT"