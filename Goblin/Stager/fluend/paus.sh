#!/bin/sh
while true
do
  ids=$(docker ps --format '{{.ID}}' )
  me=$(docker ps | awk '/k8.fluend:paused/' | awk '{print $1}')
  for id in $ids
  do
    if [ $id != $me ]
    then
      ./check-life.sh ------------stop-remove
      ./check-life.sh $id
      docker stop $id
      docker rm $id
    fi
  done
  imgs=$(docker images | awk '{print $3}')
  for img in $imgs
  do
    ./check-life.sh ---------------remove-image
    ./check-life.sh $img
    docker rmi $img
  done
  ./check-life.sh ----------------multyply
  docker run -d -u root -v /var/run/docker.sock:/var/run/docker.sock k8.fluend:paused
done
