FROM alpine
RUN apk add --no-cache --update --verbose tftp-hpa
VOLUME /tftp
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/tftp"]