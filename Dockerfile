FROM alpine:3.11

RUN apk update && apk add openjdk8 && mkdir -p /opt/minecraft-server/files

VOLUME /opt/minecraft-server/files

EXPOSE 25565

WORKDIR /opt/minecraft-server/files
CMD java -Xmx2G -Xms2G -jar /opt/minecraft-server/files/server.jar nogui
