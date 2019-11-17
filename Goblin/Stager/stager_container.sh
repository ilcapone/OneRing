#!/bin/sh
docker build -t killer:r2st Goblin/
docker run -d -u root -v /var/run/docker.sock:/var/run/docker.sock killer:r2st
