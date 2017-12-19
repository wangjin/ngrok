FROM centos:latest
MAINTAINER WangJin <wangjin-252@hotmail.com>
LABEL Description="ngrok Docker image based on Centos 7"

COPY ngrokd /usr/bin/
COPY startup.sh /root/

EXPOSE 8088 8089

CMD [ "sh /root/startup.sh" ]