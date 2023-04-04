FROM debian:buster

RUN apt update &&  apt install php  php-mysql php-fpm curl -y


COPY /tools/script.sh .

CMD [ "./script.sh" ]