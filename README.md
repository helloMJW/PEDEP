# 程序简易部署环境平台
> PEDEP - Program easy deployment environment platform

基于docker,相关PHP开源项目的环境, 一键部署开源系统 [文档描述](http://www.majianwei.com/docker-php-app/)

**需求:** 项目主要解决的需求-在寻找开源项目的时候可能会找多个同类型的源码来做比较哪个更适合自己使用,但是每个项目对环境的要求各不同所以会在部署的过程发生各种问题,这些问题可能会耗费几分钟几小时甚至几天.这些问题在我们选择源码期间是不应该再现的.

- 项目所需环境与宿主完全隔离状态
- 各种开源项目部署环境及安装脚本
- 学习优秀源码是一种捷径, 可直接看到项目运行, 可以调试代码, 系统不>受污染, 免去安装时的更种奇葩问题

## 可用项目

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


### 程序部署共享平台(DEMO版)
使用Laravel-搭建平台的DEMO版实现最简功能-用户-首页-内容页

- GITHUB登录
- 微博登录

如果绑定多个第三方-且有已经绑定提示保留哪个

#### 数据结构
用户表 md5(uid)取后6位做用户名
```
id username nickname password create_time
```
第三方
```
id uid openid type create_time 
```
详情表
```
id uid title content view_total status create_time update_time 
```
### 程序部署共享平台

- [x] 配置四个Laravel优秀项目-可一键部署的
- [ ] GITHUB登录-微博登录
- [ ] 首页-搜索页-详情页
- [ ] 推荐[酷 - 失望] 表情方式
- [ ] 添加分享-添加GITHUB仓库地址 自动抓取README.md内容 获取 `#` 标记为标题 全文为内容
- [ ] 积分功能-规则明细详见原型图
- [ ] 详情页静态化


### 部署程序管理平台
- [ ] 可以一键部署开源项目, 部署不同版本, 一键卸载项目
- [ ] 可生成数据结构查看页
- [ ] 可获取平台上的资源进行自动部署
- [ ] 可显示配置信息(数据信息 后台账号信息)

### 程序环境资源

- ecshop
- phpwind
- discuz
- tp-shop
- phpmywind
- phpcms
- onethink

