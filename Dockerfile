FROM nventiveux/docker-alpine-rpi
MAINTAINER Peter Lavelle <peter@solderintheveins.co.uk>
RUN apk update && \
apk upgrade && \
apk add bash squid && \
rm -rf /var/cache/apk/* && \
mkdir -p /var/log/squid3
EXPOSE 3128
ENTRYPOINT ["/usr/sbin/squid"] 
CMD ["-N", "-d 1", "-D"]
