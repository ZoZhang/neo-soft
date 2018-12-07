FROM php:7.1-fpm-alpine

MAINTAINER ZoZhang <zo.zhang@gmail.com>

LABEL Vendor="ZoZhang"
LABEL Description="C'est un défi de nuit de info pour NEO|SOFT"
LABEL Version="1.0"

COPY exemple.sql /tmp/exemple.sql

RUN apk add --no-cache \
	git \
    nginx \
    mariadb \
    mariadb-client \
    supervisor 

# Install dependencies
RUN set -ex; \
    \
    apk add --no-cache \
        bzip2-dev \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        libxpm-dev \
    ; \
    \
    docker-php-ext-configure gd --with-freetype-dir=/usr --with-jpeg-dir=/usr --with-webp-dir=/usr --with-png-dir=/usr --with-xpm-dir=/usr; \
    docker-php-ext-install bz2 gd mysqli pdo_mysql opcache zip; \
    mysql_install_db --defaults-file=/etc/mysql/my.cnf --user=mysql; \
    /usr/bin/mysqld_safe --defaults-file=/etc/mysql/my.cnf --user=mysql & \
    sleep 10s; \
    mysql -uroot --password="" < /tmp/exemple.sql

# Copy configuration
COPY etc /etc/

# Copy main script
COPY run.sh /run.sh
RUN chmod u+rwx /run.sh

# Copy application code source
RUN set -ex; \
	\
	curl --output mvc.tar.xz --location https://github.com/ZoZhang/sil-da2i-td-php-objet-mvc/archive/v1.0.tar.gz; \
    tar -xf mvc.tar.xz -C /var/www/html; \
    chown -R www-data:www-data /var/www/html; \
    rm -rf mvc.tar.xz; 

# We expose port 3308
EXPOSE 3308

ENTRYPOINT [ "/run.sh" ]
CMD ["supervisord", "-n", "-j", "/supervisord.pid"]

