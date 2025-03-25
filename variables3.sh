#!bin/bash

echo "Please enter your username:: "

read -s USERNAME #the value entered above wiil be automatically attached to USERNAME variable

echo "Please enter your Password:: "
read -s PASSWORD

echo "Username is: $USERNAME, Password is: $PASSWORD" # Iam  printing just for validation, you should not print username and passwords in script 