#!/bin/sh

if [ "$1" == php-fpm ] || [ "$1" == supervisord ] ; then
    if [ "$(id -u)" = '0' ]; then
        case "$1" in
            *) # php-fpm
                user='www-data'
                group='www-data'
                ;;
        esac
    else
        user="$(id -u)"
        group="$(id -g)"
    fi
	
	mkdir -p /var/nginx/client_body_temp;

    chown -R www-data:www-data /var/www/html/ /var/nginx/client_body_temp
fi

exec "$@"