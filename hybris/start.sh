#!/bin/sh
set -e

cd /usr/src/hybris/hybris/bin/platform/

. ./setantenv.sh

./roles.sh -a docker
./roles.sh -A container --role-name=docker

ant server

./hybrisserver.sh debug
