FROM openjdk:8-jdk-alpine

RUN apk update && apk add bash curl && apk add openssl

COPY bin /minecraft/bin

RUN mkdir -p /minecraft/logs && mkdir -p /minecraft/bin && \
curl -o /minecraft/bin/server.jar https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar && \
chmod +x /minecraft/bin/*


EXPOSE 25565

CMD ["/minecraft/bin/minecraft"]
