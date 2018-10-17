#This is for Openshift

From centos:latest

LABEL maintainer="farag@email.com"

RUN yum update -y

COPY //root/xampp-linux-x64-7.2.2-0-installer.run /root

RUN cd /root && \chmod +x xampp-linux-x64-7.2.2-0-installer.run && \
    ./xampp-linux-x64-7.2.2-0-installer.run --mode unattended && \
    cd /opt/lampp/etc && \
   # mv httpd.conf httpd.conf.old80 && \
    chmod +x /opt/lampp/manager-linux-x64.run && \
     # /opt/lampp/manager-linux-x64.run

#COPY /opt/lampp/etc/httpd.conf /opt/lampp/etc/

ENTRYPOINT /opt/lampp/xampp start "-DFOREGROUND"
