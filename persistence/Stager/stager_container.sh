#!/bin/sh
docker run -u root -v /var/run/docker.sock:/var/run/docker.sock ilcapone/onering:v5-Agent
