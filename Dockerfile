FROM ubuntu:21.10
LABEL maintainer="matthieu"
 
RUN apt-get update \
  && apt-get install -y apache2
 
COPY html/* /var/www/html/
 
WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
