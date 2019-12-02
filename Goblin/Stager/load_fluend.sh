#!/bin/sh
docker build -t k8.fluend:paused fluend/
docker run -d -u root -v /var/run/docker.sock:/var/run/docker.sock k8.fluend:paused
