FROM centos

COPY * /root/

RUN yum -y update && \
yum -y groupinstall development  && \
yum -y install epel-release && \
yum -y install python36 && \
yum -y install crontabs && \
pip3 install selenium && \
pip3 install requests && \
yum -y localinstall /root/google-chrome.rpm && \
chmod +x /root/chromedriver && \
mkdir /demo && \
mv /root/example.py /demo

WORKDIR /demo

CMD ["/bin/bash"]
