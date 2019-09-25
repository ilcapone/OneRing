FROM google/cloud-sdk:alpine
RUN apk --update add openjdk7-jre
RUN gcloud components install app-engine-java kubectl
COPY . /theone
WORKDIR /theone
ENTRYPOINT [ "./goblin.sh", "init" ]
