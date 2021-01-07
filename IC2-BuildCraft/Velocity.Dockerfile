FROM alpine:3.11

WORKDIR /opt/velocity
VOLUME /opt/velocity
EXPOSE 25577

RUN apk update &&\
    apk add openjdk11

CMD java -Xms1G -Xmx1G -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar velocity.jar
