#!/bin/bash
if [ ! -f /var/www/html/wordpress/index.php ]; then
	sleep 5
	wp core download --allow-root
	wp config create --dbname=${DB_NAME} --dbuser=${DB_ADMIN} --dbpass=${DB_ADMIN_PASS} --dbhost=${DB_HOST} --allow-root
	wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EMAIL} --allow-root
	wp user create ${WP_USER} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASS} --allow-root
fi

/usr/sbin/php-fpm7.3 -F -R