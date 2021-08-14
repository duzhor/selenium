<h1 align="center">
  自用镜像
  <br>
  Author: chiupam
</h1>

# 简介
使用 centos8 为基础镜像制作的自定义镜像，内置 python 3.6.8、pip3、selenium、requsets、chrome、chromedriver 及 crontabs 服务，方便调试使用 python3 + selenium + chrome + chromedriver 的脚本。
# README目录
- [简介](#简介)
- [README目录](#README目录)
- [仓库目录说明](#仓库目录说明)
- [目录树](#目录树)
- [新建容器](#新建容器)
- [进入容器](#进入容器)
- [容器内命令](#容器内命令)
  - [python3](#python3)
  - [pip3](#python3)
- [示例脚本](#示例脚本)
# 仓库目录说明
```text
selenium/                 # selenium 仓库
  `-- .github               # github 目录
    `-- workflows             # 工作流目录
        `-- main.yml            # 工作流文件
  |-- chromedriver          # chromedriver 驱动
  |-- Dockerfile            # Dockerfile 镜像部署文件
  |-- example.py            # 示例脚本
  |-- google-chrome.rpm     # chrome 浏览器安装包
  `-- README.md             # 仓库说明
```
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
  chiupam/selenium:latest
```
# 进入容器
```shell
docker exec -it selenium bash
```
# 容器内命令
## python3
```shell
python3 example.py
```
## pip3
```shell
pip3 freeze
```
# 示例脚本
```python
# coding=utf-8
from selenium import webdriver  # 必须

def main():
    driver.get('https://www.baidu.com/')
    print(driver.title)
    driver.quit()

if __name__ == "__main__":
    chrome_options = webdriver.ChromeOptions()  # 必须
    chrome_options.add_argument('--headless')  # 必须
    chrome_options.add_argument('--no-sandbox')  # 必须
    driver = webdriver.Chrome(executable_path='/root/chromedriver', options=chrome_options)  # 必须
    main()

```
