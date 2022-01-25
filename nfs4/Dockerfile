FROM alpine

RUN arch
RUN apk add --no-cache nfs-utils curl
RUN    echo "Current architecture being built: " $(arch)
RUN    mkdir -p /var/lib/nfs/rpc_pipefs /nfs
RUN    echo "rpc_pipefs /var/lib/nfs/rpc_pipefs rpc_pipefs defaults 0 0" >> /etc/fstab
RUN    echo "nfsd       /proc/fs/nfsd           nfsd       defaults 0 0" >> /etc/fstab
RUN    curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v3.0.0.0-1/s6-overlay-$(arch)-3.0.0.0-1.tar.xz | tar xvzf - -C /
COPY nfs4/config.init /etc/cont-init.d/nfs-config
COPY nfs4/rpcbind.run /etc/services.d/rpcbind/run
COPY nfs4/mountd.run /etc/services.d/mountd/run
COPY nfs4/exports /etc/exports

EXPOSE 111/udp 2049/tcp 2049/udp
ENTRYPOINT ["sh","-c","/init"]
