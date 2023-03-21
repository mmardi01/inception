FROM debian:buster

RUN apt update && apt install  mariadb-server -y 

COPY tools/database.sh .

CMD ["./database.sh"]