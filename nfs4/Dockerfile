FROM alpine

RUN apk add --no-cache nfs-utils curl && \
    case "$(arch)" in \
        x86_64) S6_ARCH='amd64';; \
        aarch64) S6_ARCH='aarch64';; \
        *) echo "unsupported architecture"; exit 1 ;; \
    esac && \
    echo "Current architecture being built: " $(arch) "    Chosen s6 arch: " $S6_ARCH && \
    mkdir -p /var/lib/nfs/rpc_pipefs /nfs && \
    echo "rpc_pipefs /var/lib/nfs/rpc_pipefs rpc_pipefs defaults 0 0" >> /etc/fstab && \
    echo "nfsd       /proc/fs/nfsd           nfsd       defaults 0 0" >> /etc/fstab && \
    curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v3.3.0.0-1/s6-overlay-${S6_ARCH}-3.0.0.0-1.tar.gz | tar xvzf - -C /
COPY nfs4/config.init /etc/cont-init.d/nfs-config
COPY nfs4/rpcbind.run /etc/services.d/rpcbind/run
COPY nfs4/mountd.run /etc/services.d/mountd/run
COPY nfs4/exports /etc/exports

EXPOSE 111/udp 2049/tcp 2049/udp
ENTRYPOINT ["sh","-c","/init"]
