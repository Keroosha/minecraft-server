FROM alpine:3.11

WORKDIR /opt/minecraft-server/files

VOLUME /opt/minecraft-server/files/backups
VOLUME /opt/minecraft-server/files/world

COPY ./EL2-Serverpack-1.08/ .

RUN apk update && apk add --no-cache openjdk8 curl

EXPOSE 25565
EXPOSE 25575
CMD java -Xmx2G -Xms2G -jar forge-1.16.5-36.2.4.jar nogui