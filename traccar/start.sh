#!/bin/sh

echo "Waiting for mysql"
until mysql -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" &> /dev/null
do
  sleep 1
done

echo "Started traccar"
exec java \
  -Djava.net.preferIPv4Stack=true \
  -Xmx512m \
  -jar tracker-server.jar \
  conf/traccar.xml
