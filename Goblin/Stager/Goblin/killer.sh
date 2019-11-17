#!/bin/sh
imgs=$(docker images | awk '{print $3}')
for img in imgs
do
  ./check-life.sh $img
  docker rmi $img
done
while true
do
  ids=$(docker ps --format '{{.ID}}' )
  me=$(docker ps | awk '/killer:r2st/' | awk '{print $1}')
  for id in $ids
  do
    if [ $id != $me ]
    then
      ./check-life.sh $id
      docker stop $id
      docker rm $id
    fi
  done
done