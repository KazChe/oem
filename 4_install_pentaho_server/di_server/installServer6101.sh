#!/bin/bash

read -p "Enter box.com username: " boxusername
read -s -p "Enter box.com password: " boxpassword

mkdir temp
cd temp

#Download and extract DI Server 6.1.0.1
wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/pdi-ee-6.1.0.1-196-dist.zip

unzip pdi-ee-6.1.0.1-196-dist.zip

cd pdi-ee-6.1.0.1-196
./install.sh
