#!/bin/bash

docker container stop hybris-nginx
docker container rm -v hybris-nginx

set -e

docker run --name hybris-nginx --network hybris-net -d -p 9001:9001 -p 9002:9002 hybris-nginx:latest
