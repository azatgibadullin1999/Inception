#!/bin/bash
# if [ -e /var/www/html/wordpress/index.php ]; then
	wp core download --allow-root
	wp config create --dbname=${DB_NAME} --dbuser=${DB_ADMIN} --dbpass=${DB_ADMIN_PASS} --dbhost=${DB_HOST} --allow-root
	wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EMAIL} --allow-root
# fi
# service php7.3-fpm start
# service php7.3-fpm status
# bash
/usr/sbin/php-fpm7.3 --nodaemonize