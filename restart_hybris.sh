#!/bin/bash
docker container stop hybris0
docker container rm -v hybris0
docker container stop hybris1
docker container rm -v hybris1
docker volume create hybris_media

set -e

docker run -p 4001:9001 -v media:/mnt/media -p 4002:9002 -p 4003:8000 -e CLUSTER_ID=0 --network hybris-net --name hybris0 -d hybris:latest
docker run -p 5001:9001 -v media:/mnt/media -p 5002:9002 -p 5003:8000 -e CLUSTER_ID=1 --network hybris-net --name hybris1 -d hybris:latest
