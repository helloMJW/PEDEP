# 程序简易部署环境平台
> PEDEP - Program easy deployment environment platform

基于docker,相关PHP开源项目的环境, 一键部署开源系统

**需求:** 项目主要解决的需求-在寻找开源项目的时候可能会找多个同类型的源码来做比较哪个更适合自己使用,但是每个项目对环境的要求各不同所以会在部署的过程发生各种问题,这些问题可能会耗费几分钟几小时甚至几天.这些问题在我们选择源码期间是不应该再现的.

- 项目所需环境与宿主完全隔离状态
- 各种开源项目部署环境及安装脚本
- 学习优秀源码是一种捷径, 可直接看到项目运行, 可以调试代码, 系统不>受污染, 免去安装时的更种奇葩问题

## 项目todpole

[蝌蚪游泳交互程序-workerman-todpole](https://github.com/walkor/workerman-todpole)

## 构建记录

- Mac OS X - 10.13.1  buil:17B1003
- Docker version 17.12.0-ce, build c97c6d6
- docker-compose version 1.18.0, build 8dd22a9
- 初次编排于2018年03月10日09:06:12

## 使用

`git clone https://github.com/helloMJW/PEDEP.git pedep`

`git checkout todpole`

`cd pedep/wwwroot`

`git clone https://github.com/walkor/workerman-todpole.git`

`docker pull composer:1.6`

`cd workerman-todpole`

`docker run --rm -it -v $PWD:/app composer install`

`cd ../../`

`docker-compose up -d`

`docker exec -it pedep_php_1 sh`

`cd workerman-todpole && php start.php start -d`

浏览器: 127.0.0.1:8383

