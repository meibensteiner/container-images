FROM alpine
MAINTAINER Michael Eibensteiner <office@meibensteiner.at>

RUN apk --no-cache add minidlna
ADD minidlna/minidlna.conf /etc/minidlna.conf
ADD minidlna/entrypoint.sh /entrypoint.sh

EXPOSE 1900/udp 8200
VOLUME /m

RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]