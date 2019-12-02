FROM alpine
RUN apk add docker
COPY . /fluent
WORKDIR /fluent
Run chmod +x load_fluend.sh
ENTRYPOINT [ "./load_fluend.sh" ]
