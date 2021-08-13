FROM centos

COPY google-chrome.rpm chromedriver example.py /root/

RUN yum -y update && \
yum -y groupinstall development  && \
yum -y install epel-release && \
yum -y install wget && \
yum -y install unzip zip && \
yum -y install python36 && \
pip3 install selenium && \
pip3 install requests && \
yum -y install crontabs && \
cd /root  && \
yum -y localinstall google-chrome.rpm && \
chmod +x chromedriver && \
mkdir /root/python && \
mv /root/example.py /root/python

WORKDIR /root/python

CMD ["/bin/bash"]
