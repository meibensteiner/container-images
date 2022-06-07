FROM alpine AS fswatch-builder
WORKDIR /tmp/build
RUN apk add --no-cache file git autoconf automake libtool gettext gettext-dev make g++ texinfo curl && \
    git clone https://github.com/emcrisostomo/fswatch.git . && \
    ./autogen.sh && ./configure && make -j



FROM alpine
MAINTAINER Michael Eibensteiner <office@meibensteiner.at>

RUN apk --no-cache add minidlna
ADD minidlna/entrypoint.sh /entrypoint.sh
ADD minidlna/minidlna-template.conf /etc/minidlna-template.conf
COPY --from=fswatch-builder /tmp/build/src/fswatch /usr/local/bin/fswatch

EXPOSE 1900/udp 8200
VOLUME /media

RUN chmod +x /entrypoint.sh && \
    mkdir -p /media/movies
ENTRYPOINT [ "/entrypoint.sh" ]
