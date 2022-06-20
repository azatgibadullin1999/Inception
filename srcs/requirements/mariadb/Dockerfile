FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./tools/start.sh /
RUN chmod 744 start.sh

CMD [ "/start.sh" ]
