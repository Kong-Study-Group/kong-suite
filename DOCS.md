# 辛酸泪

## 环境
使用vagrant打包环境

* docker-mashine
* docker
* docker-compose

## 构建

* yum
  * 使用163的CentOS国内镜像
* dockerHub
  * 使用阿里云加速器
  * 使用本地dockerHub

## 修改docker配置
```
vim /etc/docker/daemon.json

{
  "registry-mirrors": ["https://hj2ieq8h.mirror.aliyuncs.com"],
  "insecure-registries": ["172.28.40.90"]
}

systemctl daemon-reload;systemctl stop docker;systemctl start docker

```
## 登录

```
docker login http://172.28.40.90/
zhangzheng:123456
```
