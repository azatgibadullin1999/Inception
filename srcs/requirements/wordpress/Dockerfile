FROM debian:buster

RUN apt-get update
RUN apt-get install -y \
					curl \
					wget \
					mariadb-client \
					php-fpm \
					php-mysql \
					php-bcmath \
					php-ctype \
					php-json \
					php-mbstring \
					php-pdo \
					php-tokenizer \
					php-xml \
					php-curl

RUN	mkdir -p /var/www/html/wordpress ; \
	chown -R www-data:www-data /var/www/html/wordpress/ ; \
	chmod -R 777 /var/www/html/wordpress/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar ; \
	chmod +x wp-cli.phar ; \
	mv wp-cli.phar /usr/bin/wp

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./conf/php-fpm.conf /etc/php/7.3/fpm/php-fpm.conf
COPY ./tools/start.sh /start.sh
RUN chmod 744 /start.sh

WORKDIR /var/www/html/wordpress/

ENTRYPOINT [ "/start.sh" ]
