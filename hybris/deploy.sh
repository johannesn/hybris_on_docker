#!/bin/bash
set -e

apt-get update
apt-get install -y unzip default-jdk lsof mysql-client
update-alternatives --config java

cd /usr/src/hybris/

echo "Unzipping..."
unzip hybrisServer-Platform.zip
unzip hybrisServer-AllExtensions.zip
unzip hybrisServer-Config.zip
unzip hybrisServer-Licence.zip
unzip roles.zip

echo "Building..."
cd hybris/bin/platform/
. ./setantenv.sh

./roles.sh -a docker
./roles.sh -A container --role-name=docker

ant
