FROM centos:latest
MAINTAINER WangJin <wangjin-252@hotmail.com>
LABEL Description="ngrok Docker image based on Centos 7"

COPY ngrokd /usr/local/bin/
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
EXPOSE 8088 8089

CMD [ "sh /usr/local/bin/docker-entrypoint.sh" ]