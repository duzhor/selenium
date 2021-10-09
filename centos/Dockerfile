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
&& if [[ ! -e /usr/bin/pip ]]; then ln -s pip3 /usr/bin/pip ; fi \
&& if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi \
&& yum -y install crontabs \
&& yum -y localinstall /root/google-chrome.rpm \
&& mv /root/chromedriver /usr/bin \
&& chmod +x /usr/bin/chromedriver \
&& mkdir data \
&& echo "* * * * * crontab /data/cron.sh" > /data/cron.sh \
&& crontab /data/cron.sh

WORKDIR /data

ENTRYPOINT crond && /bin/bash