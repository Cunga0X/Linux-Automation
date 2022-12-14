#!/bin/bash

for i in "Documents" "Downloads" "Pictures" "Videos" "Docker"
    do
        mkdir $i && echo "Directory $i created successfuly."
    
done


username=$(cat users.txt | tr 'A-Z'  'a-z')

password=$username@123

for user in $username
do
       sudo useradd $user
       $password
done

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo docker run hello-world
# Linux post-install
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

