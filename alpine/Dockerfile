FROM alpine:latest

USER root

WORKDIR /data

VOLUME [ "/data" ]

ADD ./alpine/* /data/

ENV TIME_ZONE=Asia/Shanghai

RUN apk add --no-cache -U tzdata \
&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime \
&& echo "${TIME_ZONE}" > /etc/timezone \
&& apk add --update --upgrade \
&& apk add --no-cache python3 \
&& apk add --no-cache python3-dev \
&& apk add --no-cache chromium \
&& apk add --no-cache chromium-chromedriver \
&& apk add wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted \
&& apk add --no-cache git \
&& python3 -m ensurepip \
&& rm -r /usr/lib/python*/ensurepip \
&& pip3 install --upgrade pip \
&& pip3 install --upgrade setuptools \
&& pip3 install --upgrade selenium \
&& pip3 install --upgrade requests \
&& if [[ ! -e /usr/bin/pip ]]; then ln -s pip3 /usr/bin/pip ; fi \
&& if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi \
&& rm -rf /var/cache/apk/* \
&& rm -rf ~/.cache/pip

CMD [ "/bin/sh" ]
