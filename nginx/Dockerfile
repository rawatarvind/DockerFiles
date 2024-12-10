FROM ubuntu
MAINTAINER Arvind Singh
RUN apt update -y && \ 
    apt install nginx -y && \ 
    mkdir -p /var/www/tutorial && \
    mkdir -p /etc/nginx/site-enabled

WORKDIR /var/www/tutorial
COPY nginx/index.html .

WORKDIR /

COPY  nginx/site /etc/nginx/sites-enabled/

EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]
