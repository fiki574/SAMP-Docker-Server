#!/bin/bash

start=$(date +%s)
docker stop samp-server
sleep 5
docker build -t samp-runtime:latest ./runtime
docker build --no-cache -t samp-server:latest ./server
sleep 5
docker-compose up -d samp-server
sleep 10
docker rmi -f $(docker images | grep none | awk '{print $3}')
end=$(date +%s)
echo "Duration: $(($end-$start)) seconds"
