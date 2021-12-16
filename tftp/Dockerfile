FROM alpine
RUN apk add --no-cache tftp-hpa
VOLUME /var/tftp
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftp"]