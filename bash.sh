#!/bin/bash

for i in "Documents" "Downloads" "Pictures" "Videos" "Docker"
    do
        mkdir $i && echo "Directory $i created successfuly."
    
done


username=$(cat /tmp/userlist | tr 'A-Z'  'a-z')

password=$username@123

for user in $username
do
       useradd $user
       echo $password | passwd --stdin $user
done

