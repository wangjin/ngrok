FROM centos:latest
MAINTAINER WangJin
LABEL Description="ngrok Docker image based on Centos 7"

COPY ngrokd /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin/
RUN mkdir -p /etc/ngrok-secrets
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/ngrokd
EXPOSE 80 443 4443
ENTRYPOINT ["docker-entrypoint.sh"]