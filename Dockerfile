FROM centos:7
RUN yum install httpd -y  && \
    echo ServerName 172.17.0.2 >> /etc/httpd/conf/httpd.conf
WORKDIR /var/www/html/
#ADD htt:ps://www.free-css.com/assets/files/free-css-templates/download/page296/mediplus-lite.zip .
COPY ./mediplus-lite.tar .

RUN tar -xvf mediplus-lite.tar  && \ 
    mv mediplus-lite/* /var/www/html
EXPOSE 80 
COPY httpd-foreground /usr/local/bin/

RUN chmod +x /usr/local/bin/httpd-foreground  # Ensure script is executable

CMD ["httpd-foreground"]

