
set -e

docker run -v media:/data --name helper busybox true
docker cp ../hybris-6.1.0.2_modulegen/hybris/data/media helper:/data
docker rm helper
