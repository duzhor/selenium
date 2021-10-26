FROM alpine:latest

MAINTAINER chiupam

USER root

#RUN echo http://mirrors.aliyun.com/alpine/v3.10/main/ > /etc/apk/repositories \
#&& echo http://mirrors.aliyun.com/alpine/v3.10/community/ >> /etc/apk/repositories \
#&& apk add --no-cache -U tzdata \
#&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
#&& echo "Asia/Shanghai" > /etc/timezone

RUN apk add --no-cache -U tzdata \
&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone \
&& apk add --update --upgrade \
&& apk add --no-cache python3 python3-dev py3-pip chromium chromium-chromedriver py3-requests py3-requests py3-lxml py3-selenium\
&& apk add wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted \
&& python3 -m ensurepip \
&& rm -r /usr/lib/python*/ensurepip \
&& if [[ ! -e /usr/bin/pip ]]; then ln -s pip3 /usr/bin/pip ; fi \
&& if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi \
&& rm -rf /var/cache/apk/* \
&& rm -rf ~/.cache/pip \
&& mv /usr/lib/chromium/chromedriver /usr/bin \
&& mkdir repo \
&& git clone https://github.com/chiupam/selenium.git /repo \
&& rm -rf /repo/centos \
&& mv -f /repo/alpine/* /repo \
&& crontab /repo/cron.sh

WORKDIR /data

ENTRYPOINT crond && /bin/sh

CMD /bin/sh