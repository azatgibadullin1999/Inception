FROM debian:buster

RUN apt-get update
RUN apt-get install -y \
					wget \
					nginx \
					openssl

RUN mkdir -p /etc/nginx/ssl \
	mkdir -p /var/www/html/wordpress
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/nginx.key \
	-out /etc/nginx/ssl/nginx.crt \
	-subj /C=RU/ST=Tatarstan/L=Kazan/O=school21/OU=school21/CN=nevajno

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# CMD [ "bash" ]
CMD [ "nginx", "-g", "daemon off;" ]
