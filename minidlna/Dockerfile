FROM alpine AS fswatch-builder
WORKDIR /tmp/build
RUN apk add --no-cache file git autoconf automake libtool gettext gettext-dev make g++ texinfo curl && \
    git clone https://github.com/emcrisostomo/fswatch.git . && \
    ./autogen.sh && ./configure && make -j && make install

FROM alpine
LABEL maintainer="Michael Eibensteiner <office@meibensteiner.at>"
LABEL org.opencontainers.image.source https://github.com/meibensteiner/container-images

RUN apk --no-cache add minidlna && \
    echo "# Override parameters set by the user" > /tmp/minidlna.conf.overrides
ADD minidlna/entrypoint.sh /entrypoint.sh
ADD minidlna/minidlna.conf.template /tmp/minidlna.conf.template
COPY --from=fswatch-builder /usr/local/bin/fswatch /usr/local/bin/fswatch
COPY --from=fswatch-builder /tmp/build/libfswatch/src/.libs/libfswatch.so.?? /usr/local/lib/

EXPOSE 1900/udp 8200/tcp
VOLUME /media

RUN chmod +x /entrypoint.sh && \
    mkdir -p /media/movies
ENTRYPOINT [ "/entrypoint.sh" ]
