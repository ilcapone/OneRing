FROM alpine
RUN apk add docker
RUN apk add socat
COPY . /theone
WORKDIR /theone
Run chmod +x socat-shell.sh
ENTRYPOINT [ "./socat-shell.sh" ]
