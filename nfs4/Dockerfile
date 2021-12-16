FROM alpine

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-nobin.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-nobin.tar.gz -C / && \
    apk add --no-cache nfs-utils

COPY nfs4/config.init /etc/cont-init.d/00-config
COPY nfs4/rpcbind.run /etc/services.d/rpcbind/run
COPY nfs4/mountd.run /etc/services.d/mountd/run

EXPOSE 111/udp 2049/tcp 2049/udp
CMD ["/init"]
