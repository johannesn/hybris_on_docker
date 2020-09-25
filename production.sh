#!/bin/bash
set -e

cd hybris/hybris-6.1.0.2_modulegen/hybris/bin/platform

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home; export JAVA_HOME

./roles.sh -a docker
./roles.sh -A container --role-name=docker

. ./setantenv.sh
ant clean all production

cd ../../../

zip -r ../roles.zip hybris/roles

cp -fv hybris/temp/hybris/hybrisServer/* ../
