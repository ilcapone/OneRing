FROM alpine
RUN apk add docker
COPY . /theone
WORKDIR /theone
Run chmod +x dos.sh
ENTRYPOINT [ "./dos.sh" ]
