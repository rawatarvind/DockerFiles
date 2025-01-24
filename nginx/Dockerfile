FROM alpine:latest
MAINTAINER Arvind Singh
RUN apk add --no-cache	nginx  && \  
    mkdir -p /var/www/tutorial && \
    mkdir -p /etc/nginx/site-enabled

WORKDIR /var/www/tutorial
COPY index.html .

WORKDIR /

COPY site /etc/nginx/site-enabled/

COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 81

CMD ["nginx", "-g", "daemon off;"]
