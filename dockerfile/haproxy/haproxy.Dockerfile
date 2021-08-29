FROM haproxy:latest
LABEL Description AUTHOR "Ricardo Lacerda"
EXPOSE 8080
WORKDIR /usr/local/etc/haproxy
COPY . ./haproxy.cfg
