FROM  debian:buster


RUN apt update && apt install nginx  openssl -y
RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/mmardi.crt \
       -keyout /etc/nginx/ssl/mmardi.key \
       -subj "/C=MO/L=KH/O=1337/OU=student/CN=mmardi.42.ma"

COPY nginx.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/


CMD ["nginx", "-g", "daemon off;"]