#!/bin/bash

for i in "Documents" "Downloads" "Pictures" "Videos" "Docker"
    do
        mkdir $i && echo "Directory $i created successfuly."
    
done


username=$(cat users.txt | tr 'A-Z'  'a-z')

password=$username@123

for user in $username
do
       useradd $user
       passwd $password
done

