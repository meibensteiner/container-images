FROM gcc:12 AS build
COPY udpbroadcastrelay/main.c /src/
WORKDIR /src/
RUN gcc -g main.c -o udpbroadcastrelay

FROM gcr.io/distroless/base-nossl-debian12
LABEL maintainer="Michael Eibensteiner <office@meibensteiner.at>"
LABEL org.opencontainers.image.source https://github.com/meibensteiner/container-images

COPY --from=build /src/udpbroadcastrelay /udpbroadcastrelay
CMD ["/udpbroadcastrelay"]