FROM alpine
MAINTAINER Michael Eibensteiner <office@meibensteiner.at>

RUN apk --no-cache add minidlna
ADD minidlna/minidlna.conf /etc/minidlna.conf
ADD minidlna/entrypoint.sh /entrypoint.sh

EXPOSE 1900/udp 8200
VOLUME /media

RUN chmod +x /entrypoint.sh && \
    mkdir /media/Music && \
    mkdir /media/Videos && \
    mkdir /media/Pictures && \
ENTRYPOINT [ "/entrypoint.sh" ]