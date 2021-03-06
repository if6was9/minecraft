FROM adoptopenjdk/openjdk11:alpine-slim

RUN apk update && apk add bash curl jq openssl

COPY bin /minecraft/bin

RUN mkdir -p /minecraft/logs && mkdir -p /minecraft/bin && \
/minecraft/bin/download-jar.sh 1.16.1 && \
chmod +x /minecraft/bin/*


EXPOSE 25565

CMD ["/minecraft/bin/minecraft"]
