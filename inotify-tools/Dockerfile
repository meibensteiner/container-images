FROM alpine
LABEL maintainer="Michael Eibensteiner <office@meibensteiner.at>"
LABEL org.opencontainers.image.source https://github.com/meibensteiner/container-images

RUN apk --update upgrade && \
    apk add --update inotify-tools && \
    rm -rf /var/cache/apk/*