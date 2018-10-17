#This is for Openshift

From centos:latest
#WORKDIR /tmp
LABEL maintainer="farag@email.com"

RUN yum update -y && \ 
yum install -y net-tools && \
yum install -y httpd && \
mkdir /home/mohamed.farag-redingtongulf.com/docks

#COPY //docks/xampp-linux-x64-7.2.2-0-installer.run .
ADD https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run /docks
RUN cd /home/mohamed.farag-redingtongulf.com/docks && \
chmod +x xampp-linux-x64-7.2.2-0-installer.run && \
    ./xampp-linux-x64-7.2.2-0-installer.run --mode unattended && \
    cd /opt/lampp/etc && \
   # mv httpd.conf httpd.conf.old80 && \
    chmod +x /opt/lampp/manager-linux-x64.run && \
     /opt/lampp/manager-linux-x64.run

COPY /opt/lampp/etc/httpd.conf /opt/lampp/etc/

ENTRYPOINT /opt/lampp/xampp start "-DFOREGROUND"
