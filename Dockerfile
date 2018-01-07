FROM alpine:latest
MAINTAINER derflocki

RUN apk --no-cache add minidlna

VOLUME /config

EXPOSE 8200 1900/udp

COPY cmd.sh /cmd.sh

CMD ["/cmd.sh"]
