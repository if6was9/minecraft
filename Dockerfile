FROM openjdk:8-jdk-alpine

RUN apk update && apk add bash

COPY minecraft /minecraft

RUN mkdir -p /minecraft/logs && mkdir -p /minecraft/bin
RUN chmod +x /minecraft/bin/*

RUN /minecraft/bin/minecraft-install && rm /minecraft/bin/minecraft-install

EXPOSE 25565

CMD ["/minecraft/bin/minecraft-start"]