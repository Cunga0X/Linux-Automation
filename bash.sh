#!/bin/bash

for i in "Documents" "Downloads" "Pictures" "Videos" "Docker"
    do
        $ cd users
        $ cd ~"$USER"
        $ mkdir $i || echo "Directory $i created successfuly."
    
    done

echo "Task completed."



