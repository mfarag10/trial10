#This is for Openshift

From centos:7
#From scratch
#WORKDIR /tmp
LABEL maintainer="farag@email.com"

RUN   yum update -y && \ 
yum install -y net-tools && \
 yum install -y httpd

RUN yum install -y sudo && \
  #  adduser userfarag && \
  useradd -d /home/userfarag -ms /bin/bash -g root -p farag userfarag && \
    echo "userfarag ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/userfarag && \
    chmod 0440 /etc/sudoers.d/userfarag

RUN su - userfarag

#CMD ["su", "-", "userfarag", "-c", "/bin/bash"]




 RUN mkdir -p /home/mohamed.farag-redingtongulf.com/docks

#COPY //docks/xampp-linux-x64-7.2.2-0-installer.run .


ADD https://www.apachefriends.org/xampp-files/7.2.2/xampp-linux-x64-7.2.2-0-installer.run /home/mohamed.farag-redingtongulf.com/docks
 RUN chgrp -R 0 /home/mohamed.farag-redingtongulf.com/docks && \
    chmod -R g=u /home/mohamed.farag-redingtongulf.com/docks
 
 

RUN cd /home/mohamed.farag-redingtongulf.com/docks
RUN chmod -R 777 /home/mohamed.farag-redingtongulf.com/docks/
RUN sudo /home/mohamed.farag-redingtongulf.com/docks/xampp-linux-x64-7.2.2-0-installer.run --mode unattended 
#RUN chmod -R 777 /home/mohamed.farag-redingtongulf.com/docks/
#RUN chown -R 10001 /home/mohamed.farag-redingtongulf.com/docks
#RUN chown -R 10001 /opt/lampp/
# USER 10001
RUN sudo /opt/lampp/xampp start
#RUN chown -R 10001 /home/mohamed.farag-redingtongulf.com/docks
 
#  RUN  /home/mohamed.farag-redingtongulf.com/docks/xampp-linux-x64-7.2.2-0-installer.run --mode unattended 
  
 # RUN chgrp -R 0 /home/mohamed.farag-redingtongulf.com/docks && \
  #  chmod -R g=u /home/mohamed.farag-redingtongulf.com/docks
 
  USER userfarag
  
  
   # cd /opt/lampp/etc && \
   # mv httpd.conf httpd.conf.old80 && \
   # chmod +x /opt/lampp/manager-linux-x64.run && \
    # /opt/lampp/manager-linux-x64.run

#COPY /opt/lampp/etc/httpd.conf /opt/lampp/etc/

#ENTRYPOINT /opt/lampp/xampp start "-DFOREGROUND"
