FROM ubuntu:18.04
MAINTAINER Jael (jael.atam971@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
# ADD static-website-example/ /var/www/html
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
CMD ["nginx", "-g", "daemon off;"]
# ENTRYPOINT ["/usr/sbin/nginx", "-g", "deamon off;"]