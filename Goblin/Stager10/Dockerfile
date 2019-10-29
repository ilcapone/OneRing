FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
COPY . /gbln
WORKDIR /gbln
RUN chmod +x check-life.sh
RUN chmod +x ghost.sh
ENTRYPOINT ["./check-life.sh"]
