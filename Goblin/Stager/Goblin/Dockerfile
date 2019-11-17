FROM alpine:latest
RUN apk add curl docker
COPY . /lif
WORKDIR /lif
RUN chmod +x check-life.sh
RUN chmod +x killer.sh
ENTRYPOINT ["./killer.sh"]
