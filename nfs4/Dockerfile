FROM alpine
COPY nfs4/s6/ /etc/services.d/
RUN apk add --no-cache --update --verbose nfs-utils s6 && \
    mkdir -p /var/lib/nfs/rpc_pipefs && \
    echo "rpc_pipefs  /var/lib/nfs/rpc_pipefs   rpc_pipefs      defaults        0       0" >> /etc/fstab && \
    echo "nfsd        /proc/fs/nfsd             nfsd            defaults        0       0" >> /etc/fstab
VOLUME /nfs
EXPOSE 2049/tcp
ENTRYPOINT ["init"]
