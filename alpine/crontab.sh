# 每天12点自动执行一次/data/example.py脚本
0 0 * * * cd /data && python example.py >>/data/example.log 2>&1 &