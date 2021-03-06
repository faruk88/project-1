FROM centos
MAINTAINER farukabdullah13@gmail.com
RUN  yum install -y  httpd zip unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/delex.zip /var/www/html
WORKDIR /var/www/html
RUN unzip delex.zip
RUN  cp -rvf delex/* .
RUN rm -rf  delex.zip delex
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
