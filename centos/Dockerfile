FROM centos:latest

USER root

WORKDIR /data

VOLUME [ "/data" ]

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

CMD ["/bin/bash"]
