FROM centos:latest

MAINTAINER chiupam

USER root

ADD google-chrome.rpm chromedriver /root/

RUN yum -y update \
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
