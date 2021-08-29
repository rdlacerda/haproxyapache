FROM httpd:latest
LABEL Description AUTHOR "Ricardo Lacerda"
EXPOSE 80
WORKDIR /usr/local/apache2/
RUN apt-get update
RUN apt install -y iputils-ping net-tools procps curl
HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:80/healthcheck.html || exit 1

