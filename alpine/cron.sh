# 每小时更新定时任务
0 * * * * cd /data && crontab cron.sh
# 自动删除3天前的log文件
0 5 * * * cd /data && sh delete.sh >/dev/null 2>&1
