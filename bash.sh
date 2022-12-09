#!/bin/bash

for i in "Documents" "Downloads" "Pictures" "Videos" "Docker"
    do
        $ mkdir $i || echo "Directory $i created successfuly."
    
    done

echo "Dir taks successfuly finished"


username=$(cat /usersinfo/users.txt | tr 'A-Z'  'a-z')

password=$username@123

for user in $username
do
       useradd $user
       useradd $user sudo
       echo $password | passwd --stdin $user
done



