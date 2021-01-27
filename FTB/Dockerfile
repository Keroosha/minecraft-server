FROM alpine:3.11

WORKDIR /opt/minecraft-server/files

VOLUME /opt/minecraft-server/files/backups
VOLUME /opt/minecraft-server/files/world

COPY ./FTB_1.10.0/ .

RUN apk update &&\
 apk add openjdk8 curl &&\
 chmod +x start.sh


EXPOSE 25565
EXPOSE 25575
ENTRYPOINT ["sh", "/opt/minecraft-server/files/start.sh"]