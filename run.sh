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

	#"${mysql[@]}" < "/tmp/exemple.sql";

#mysql -uroot -p <<EOF
#source /tmp/exemple.sql;
#EOF
  #   mysql -u root --password="" <<-EOSQL
		# 	DROP DATABASE IF EXISTS test ;
		# 	CREATE DATABASE IF NOT EXISTS film;
		# 	USE film;
		# 	SOURCE /tmp/exemple.sql;
		# EOSQL

		#rm -rf /tmp/exemple.sql;
fi

# if [ "$1" == mysql ] ; then

# 	#Initialize mysql service
# 	#if [ ! -d /var/lib/mysql/mysql ]; then
# 	    #/usr/bin/mysqld_safe --defaults-file=/etc/mysql/my.cnf --user=mysql &
# 	    #sleep 5s

# 		mysql -u root --password="" <<-EOSQL
# 			DROP DATABASE IF EXISTS test ;
# 			CREATE DATABASE IF NOT EXISTS film;
# 			USE film;
# 			SOURCE /tmp/exemple.sql;
# 		EOSQL

# 	 #    mysql -u root --password="" <<-EOSQL
# 		# 	DROP DATABASE IF EXISTS test ;
# 		# 	CREATE DATABASE IF NOT EXISTS film;
# 		# 	USE film;
# 		# 	SOURCE /tmp/exemple.sql;
# 		# EOSQL

# 		rm -rf /tmp/exemple.sql;

# 		#killall -9 mysqld_safe
# 	#fi
# fi

exec "$@"