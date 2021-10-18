FROM centos:latest

MAINTAINER chiupam

USER root

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
&& mkdir repo \
&& git clone https://github.com/chiupam/selenium.git /repo \
&& rm -rf /repo/alpine \
&& mv -f /repo/centos/* /repo \
&& cp /repo/chromedriver /usr/bin \
&& chmod +x /usr/bin/chromedriver \
&& yum -y localinstall /repo/google-chrome.rpm \
&& crontab /repo/cron.sh

WORKDIR /data

ENTRYPOINT crond && /bin/bash

CMD /bin/bash
