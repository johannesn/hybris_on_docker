#!/bin/bash

docker container stop hybris-mysql
docker container rm -v hybris-mysql

set -e

docker run -e MYSQL_ROOT_PASSWORD=1234 -e MYSQL_DATABASE=hybris_modulegen --network hybris-net --name hybris-mysql -d hybris-mysql:latest
