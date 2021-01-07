FROM alpine:3.11

VOLUME /opt/minecraft-server
WORKDIR /opt/minecraft-server
EXPOSE 25565

RUN apk update && apk add openjdk8

CMD java -Xmx2G -Xms2G -jar forge-*.jar nogui
