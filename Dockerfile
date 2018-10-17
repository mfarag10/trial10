#This is for Openshift

From centos:latest
#WORKDIR /tmp
LABEL maintainer="farag@email.com"

RUN groupadd -g 999 appuser && \
    useradd -r -u 1200 -g appuser appuser
USER appuser

RUN yum update -y && \ 
yum install -y net-tools && \
yum install -y httpd && \
mkdir -p /home/mohamed.farag-redingtongulf.com/docks

#COPY //docks/xampp-linux-x64-7.2.2-0-installer.run .
ADD https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run /home/mohamed.farag-redingtongulf.com/docks
RUN cd /home/mohamed.farag-redingtongulf.com/docks

RUN chmod +x /home/mohamed.farag-redingtongulf.com/docks/xampp-linux-x64-7.2.2-0-installer.run 
  RUN  /home/mohamed.farag-redingtongulf.com/docks/xampp-linux-x64-7.2.2-0-installer.run --mode unattended 
   # cd /opt/lampp/etc && \
   # mv httpd.conf httpd.conf.old80 && \
   # chmod +x /opt/lampp/manager-linux-x64.run && \
    # /opt/lampp/manager-linux-x64.run

#COPY /opt/lampp/etc/httpd.conf /opt/lampp/etc/

#ENTRYPOINT /opt/lampp/xampp start "-DFOREGROUND"
