FROM centos:latest


RUN yum install -y java-1.8.0-openjdk-headless wget


#COPY minecraft /minecraft
COPY bin /bin
RUN mkdir -p /minecraft/logs

RUN chmod +x /bin/minecraft-start
RUN chmod +x /bin/minecraft-docker

EXPOSE 25565

CMD ["/bin/minecraft-docker"]