FROM httpd
MAINTAINER prakash
RUN apt-get update -y
COPY index.html /usr/local/apache2/htdocs/
EXPOSE 80
