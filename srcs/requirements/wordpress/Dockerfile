FROM debian:buster

RUN apt update &&  apt install php  php-mysql php-fpm curl mariadb-server -y


COPY /tools/script.sh .

CMD [ "./script.sh" ]