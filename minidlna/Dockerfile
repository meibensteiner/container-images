FROM alpine
MAINTAINER Michael Eibensteiner <office@meibensteiner.at>

RUN apk --no-cache add minidlna
ADD minidlna/entrypoint.sh /entrypoint.sh
ADD minidlna/minidlna-template.conf /etc/minidlna-template.conf

EXPOSE 1900/udp 8200
VOLUME /media

RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]