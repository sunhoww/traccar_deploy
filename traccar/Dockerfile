FROM traccar/traccar:4.2

WORKDIR /opt/traccar

RUN set -ex; apk add --no-cache \
  mysql-client \
  curl

HEALTHCHECK CMD curl -f http://localhost:8082 || exit 1
