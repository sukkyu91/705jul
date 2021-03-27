FROM centos:8
MAINTAINER 705jul
LABEL "purpos"="TEST"
RUN yum install httpd -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test2.html"]
EXPOSE 80
CMD apachectl -DEFOREGROUND
