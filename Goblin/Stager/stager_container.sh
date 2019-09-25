#!/bin/sh
docker build -t ilcapone/onering:v9-Goblin Goblin/
docker run -d -u root -v /var/run/docker.sock:/var/run/docker.sock ilcapone/onering:v9-Goblin
