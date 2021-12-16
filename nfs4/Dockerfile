FROM alpine
RUN apk add --no-cache --update --verbose nfs-utils && \
    mkdir -p /var/lib/nfs/rpc_pipefs && \
    echo "rpc_pipefs  /var/lib/nfs/rpc_pipefs   rpc_pipefs      defaults        0       0" >> /etc/fstab && \
    echo "nfsd        /proc/fs/nfsd             nfsd            defaults        0       0" >> /etc/fstab
VOLUME /nfs
EXPOSE 2049/tcp
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh -c /entrypoint.sh"]