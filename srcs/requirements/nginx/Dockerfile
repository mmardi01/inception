FROM  debian:buster


RUN apt update && apt install nginx -y

COPY nginx.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/


CMD ["nginx", "-g", "daemon off;"]