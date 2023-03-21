FROM debian:buster

RUN apt update && apt install php  php-mysql wget -y


COPY /tools/script.sh .

CMD [ "./script.sh" ]