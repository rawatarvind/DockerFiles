FROM centos:7
RUN yum install java -y  && \
    mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz .
RUN tar -xvf apache-tomcat-9.0.98.tar.gz && \
    mv  apache-tomcat-9.0.88/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]



