<h1 align="center">
  自用镜像
  <br>
  Author: chiupam
</h1>

# 简介
自用镜像，方便使用 selenium 进行调试脚本，默认启动 crond 服务。
# 镜像包含
- [x] python3
- [x] pip3
- [x] chrome
- [x] chromedriver
- [x] selenium
- [x] requests
# 镜像分类
|基础镜像|CentOS 8|Alpine Linux|
|:---:|:---:|:---:|
|标签|latest|alpine|
|拉取指令|`docker pull chiupam/selnm:latest`|`docker pull chiupam/selnm:alpine`|
|驱动路径|`/root/chromedriver`|`/usr/lib/chromium/chromedriver`|
|使用说明|[latest镜像使用说明](https://github.com/chiupam/selenium/tree/master/centos/README.md)|[alpine镜像使用说明alpine](https://github.com/chiupam/selenium/tree/master/alpine/README.md)|
# 我的主页
[chiupam/selenium](https://hub.docker.com/r/chiupam/selenium)
