# 一键部署项目
基于docker,相关PHP开源项目的环境, 一键部署开源系统

## 已有项目

- Laravel-webed
- Laravel-lavalite
- Laravel-october
- Laravel-asgardcms

## 环境要求

Linux,[docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#supported-storage-drivers),[docker-compose](https://docs.docker.com/compose/install/#install-compose)

## 使用教程

1. 安装docker、docker-compose
2. clone 当前项目到本地
3. git checkout 项目 #eg: `git checkout october`
4. `docker-compose up -d`
5. `docker exec -it dockerphpdemo_php_1 sh`
6. `./install.sh`
7. 把HOSTS文件增加 IP 对应 d.项目名.com eg:`127.0.0.1 d.october.com`
8. 访问域名-完成

## 需求与问题

> 部署语言无限制

1. 如何校验是为部署完成?
2. 如何防止重复部署(重复部署如何处理). 
3. 对于由于网络下载失败造成部署失败处理.


部署程序管理平台

1. [ ]  可生成数据结构查看页
2. [ ]  可获取平台上的资源进行自动部署
3. [ ] 可显示配置信息(数据信息 后台账号信息)

## 任务

> 开源项目演示管理平台, 可以一键部署开源项目, 部署不同版本, 一键卸载项目. 目的: 学习优秀源码是一种捷径, 可直接看到项目运行, 可以调试代码, 系统不受污染, 免去安装时的更种奇葩问题.

- [x] 配置四个Laravel优秀项目-可一键部署的
