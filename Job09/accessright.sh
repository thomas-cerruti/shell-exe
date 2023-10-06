#!/bin/bash

while IFS=, read -r id firstname lastname password role; do
sudo useradd -u "$id" "$firstname"
echo "$firstname:$password" | sudo chpasswd
role=${role:0:(${#role}-1)}
if [ $role = "Admin" ]
then 
sudo usermod -aG sudo "$firstname"
fi
#echo "$id, $firstname, $lastname, $password, $role"
done < <(tail -n +2 Shell_Userlist.csv)
