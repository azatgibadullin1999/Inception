FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/create_db.sql /
RUN usermod -d /var/lib/mysql/ mysql
RUN service mysql start ; \
	mysql -u root --password="" < /create_db.sql

CMD [ "/usr/bin/mysqld_safe" ]
