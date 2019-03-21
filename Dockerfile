FROM alpine
RUN apk add docker
RUN apk add socat
COPY . /theone
WORKDIR /theone
ENTRYPOINT [ "./socat-shell.sh" ]
