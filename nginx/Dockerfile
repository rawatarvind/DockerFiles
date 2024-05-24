FROM ubuntu
MAINTAINER Arvind Singh
RUN apt update -y && \ 
    apt install nginx -y && \ 
    mkdir -p /var/www/tutorial && \
    mkdir -p /etc/nginx/site-enabled

WORKDIR /var/www/tutorial
COPY index.html .

WORKDIR /

COPY site /etc/nginx/sites-enabled/

EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]
