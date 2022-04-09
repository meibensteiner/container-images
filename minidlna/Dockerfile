FROM alpine
MAINTAINER Michael Eibensteiner <office@meibensteiner.at>

RUN apk --no-cache add minidlna
ADD minidlna.conf /etc/minidlna.conf
COPY entrypoint.sh /usr/bin/

EXPOSE 1900/udp 8200
VOLUME /media

ENTRYPOINT [ "entrypoint.sh" ]