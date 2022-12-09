#!/bin/bash


userfile=/tmp/userlist/ 

username=$(cat $userfile | tr 'A-Z'  'a-z')

password=$username@123

for user in $username
do
       useradd $user
       echo $password | passwd --stdin $user
done

