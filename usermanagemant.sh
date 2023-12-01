#!/bin/bash

read -p "Enter the username : " username
read -p "Enter the password : " password
read -p "Enter the fullname : " fullname

useradd -m "$username" -c "$fullname"
echo "$username:$fullname" | chpasswd

echo "Account created successfully"
#NOTE : check ( cat /etc/passwd ) / ( cat /etc/shadow )
