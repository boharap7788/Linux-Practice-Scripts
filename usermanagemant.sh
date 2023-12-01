#!/bin/bash

read -p "Enter the username : " username
read -p "Enter the password : " password
read -p "Enter the fullname : " fullname

useradd -m "$username" -c "$fullname"
echo "$username:$fullname" | chpasswd

echo "Account created successfully"
#NOTE : After execution of script check ( cat /etc/passwd ) / ( cat /etc/shadow )
#The -m option ensures that a home directory is created for the user.
#The -c option is used to add the full name as the user's comment.
