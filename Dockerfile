FROM ubuntu

MAINTAINER herven adresse@gmail.com

RUN apt-get update && apt-get install -y nginx

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git

#ADD static-website-hv/ /var/www/html/

EXPOSE 80

RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/herven78/static-website-hv.git /var/www/html/

#ENTRYPOINT  ["script.sh"]

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

