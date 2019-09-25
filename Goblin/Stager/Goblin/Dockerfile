FROM alpine:latest
RUN apk add curl
COPY . /gbln
WORKDIR /gbln
RUN chmod +x check-life.sh
ENTRYPOINT ["./check-life.sh"]
