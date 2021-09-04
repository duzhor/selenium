FROM centos:latest

MAINTAINER chiupam

USER root

ADD ./centos/google-chrome.rpm ./centos/chromedriver /root/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone \
&& yum -y update \
&& yum -y groupinstall development \
&& yum -y install epel-release \
&& yum -y install python36 \
&& pip3 install selenium \
&& pip3 install requests \
&& yum -y install crontabs \
&& yum -y localinstall /root/google-chrome.rpm \
&& chmod +x /root/chromedriver

WORKDIR /data

ENTRYPOINT crond && /bin/bash
