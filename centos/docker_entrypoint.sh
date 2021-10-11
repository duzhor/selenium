#/bin/bash

if [ ! -f /data/cron.sh ]
then cd /data && wget https://raw.githubusercontent.com/chiupam/selenium/master/centos/cron.sh;
fi
crontab cron.sh