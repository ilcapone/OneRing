FROM alpine:latest
RUN apk add curl docker
COPY . /pause
WORKDIR /pause
RUN chmod +x check-life.sh
RUN chmod +x paus.sh
ENTRYPOINT ["./paus.sh"]
