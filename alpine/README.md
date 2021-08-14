# 简介
使用 alpine Linux 为基础镜像制作的自定义镜像，内置 python 3.9.5、pip3、selenium、requests、chrome、chromedriver 及 crontabs 服务，方便调试使用 python3 + selenium + chrome + chromedriver 的脚本。
# 目录树
```text
/demo/
  `-- example.py
```
# 新建容器
```shell
docker run -dit \
  -v $PWD/demo:/demo \
  --name selenium \
  --restart always \
  chiupam/selenium:alpine
```
# 进入容器
```shell
docker exec -it selenium bash
```
# 容器内命令
## python
```shell
python example.py
```
## pip
```shell
pip freeze
```
# 示例脚本
```python
# coding=utf-8
from selenium import webdriver  # 必须

def main():
    driver.get('https://www.baidu.com/')
    print(driver.title)
    driver.close()
    driver.quit()

if __name__ == "__main__":
    chrome_options = webdriver.ChromeOptions()  # 必须
    chrome_options.add_argument('--headless')  # 必须
    chrome_options.add_argument('--no-sandbox')  # 必须
    driver = webdriver.Chrome(executable_path='/usr/lib/chromium/chromedriver', options=chrome_options)  # 必须
    main()

```
# 定时示例
```shell
# 每天12点自动执行一次/data/example.py脚本
0 0 * * * cd /data && python example.py >>/data/example.log 2>&1 &
```