FROM alpine
RUN apk add docker
COPY . /theone
WORKDIR /theone
Run chmod +x stager_container.sh
ENTRYPOINT [ "./stager_container.sh" ]
