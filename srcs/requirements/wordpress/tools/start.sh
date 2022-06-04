#!/bin/bash
wp core download --allow-root
wp config create --dbname="wordpressdb" --dbuser="admin" --dbpass="admin" --dbhost="mariadb" --allow-root
wp core install --url="localhost" --title="Inception" --admin_user="SperMan" --admin_password="SperMan" --admin_email="SperMan@mail.ru" --allow-root
service php7.3-fpm start
service php7.3-fpm status
bash