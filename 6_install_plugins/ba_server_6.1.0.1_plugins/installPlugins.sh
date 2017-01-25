#!/bin/bash

read -p "Enter box.com username: " boxusername
read -s -p "Enter box.com password: " boxpassword

mkdir temp
cd temp

#Download, extract, and install all BA Server 6.1.0.1 plugins
wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/paz-plugin-ee-6.1.0.1-196-dist.zip

unzip paz-plugin-ee-6.1.0.1-196-dist.zip

cd paz-plugin-ee-6.1.0.1-196
./install.sh

cd ..

wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/pdd-plugin-ee-6.1.0.1-196-dist.zip

unzip pdd-plugin-ee-6.1.0.1-196-dist.zip

cd pdd-plugin-ee-6.1.0.1-196
./install.sh

cd ..

wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/pentaho-mobile-plugin-6.1.0.1-196-dist.zip

unzip pentaho-mobile-plugin-6.1.0.1-196-dist.zip

cd pentaho-mobile-plugin-6.1.0.1-196
./install.sh

cd ..

wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/pir-plugin-ee-6.1.0.1-196-dist.zip

unzip pir-plugin-ee-6.1.0.1-196-dist.zip

cd pir-plugin-ee-6.1.0.1-196
./install.sh

cd ..

wget --user "$boxusername" --password "$boxpassword" ftp://ftp.box.com/6.1-Releases/6.1.0.1/ee/pentaho-analysis-ee-6.1.0.1-196-dist.zip

unzip pentaho-analysis-ee-6.1.0.1-196-dist.zip

cd pentaho-analysis-ee-6.1.0.1-196
./install.sh
