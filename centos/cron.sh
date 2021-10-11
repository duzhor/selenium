# 每分钟更新定时任务
* * * * * crontab /data/cron.sh
# 自动删除3天前的log文件
0 5 * * * sh /repo/delete.sh >/dev/null 2>&1 &
