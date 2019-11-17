FROM alpine
RUN apk add docker
COPY . /hide
WORKDIR /hide
Run chmod +x stager_container.sh
ENTRYPOINT [ "./stager_container.sh" ]
