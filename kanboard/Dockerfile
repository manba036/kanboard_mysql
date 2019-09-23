FROM alpine:3.10.2

WORKDIR /

RUN apk update \
  && apk add --no-cache apache2 php7-apache2 php7-mysqli php7-pdo php7-pdo_mysql php7-mbstring php7-session php7-gd php7-json php7-xml php7-ctype php7-simplexml php7-dom openssl openrc unzip \
  && rm -rf /var/cache/apk/* \
  && wget https://github.com/kanboard/kanboard/archive/v1.2.11.zip \
  && unzip v1.2.11.zip \
  && rm -f v1.2.11.zip \
  && mkdir -p /var/www \
  && mv /kanboard-1.2.11 /var/www/kanboard \
  && mkdir -p /run/apache2 \
  && cp /var/www/kanboard/config.default.php /var/www/kanboard/config.php \
  && sed -i -e "s#define('DB_DRIVER', 'sqlite');#define('DB_DRIVER', 'mysql');#" /var/www/kanboard/config.php \
  && sed -i -e "s#define('DB_HOSTNAME', 'localhost');#define('DB_HOSTNAME', 'kanboard_db');#" /var/www/kanboard/config.php \
  && sed -i -e "s#define('DB_USERNAME', 'root');#define('DB_USERNAME', 'kb');#" /var/www/kanboard/config.php \
  && sed -i -e "s#define('DB_PASSWORD', '');#define('DB_PASSWORD', 'kb-secret');#" /var/www/kanboard/config.php \
  && sed -i -e "s#define('PLUGIN_INSTALLER', false);#define('PLUGIN_INSTALLER', true);#" /var/www/kanboard/config.php \
  && ln -s /var/www/kanboard /var/www/localhost/htdocs \
  && chown -R apache:apache /var/www/kanboard

RUN sed -i -e "s#define('PLUGIN_INSTALLER', false);#define('PLUGIN_INSTALLER', true);#" /var/www/kanboard/config.default.php

RUN echo 'ServerName localhost:80' >> /etc/apache2/httpd.conf

EXPOSE 80

VOLUME /var/www/kanboard

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]