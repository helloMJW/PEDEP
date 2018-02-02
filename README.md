# WebSVN-docker系统环境

## websvn简介
svn的web管理界面

[官方地址](https://websvnphp.github.io/)

[SVN-代码库](http://websvn.tigris.org/svn/websvn/) 用户名: guest  密码为空

## 使用方法

step1

配置本地的HOST文件

容器主机IP  d.websvn.io

step2

./start.sh

访问域名: `d.websvn.io`


出现下面界面则成功
![](http://images.majianwei.com/201818021646-R.png)

## 相关配置

svn账号: `test` 密码: `test123`

创建新的svn库: `docker exec -it some-svn-server svnadmin create new-repo`

websvn源码配置(websvn/include/distconfig.php 复制一份 config.php)-仓库路径: `$config->parentPath('/home/svn');`


### 相关资料

[svn安装及创建库方法](http://www.majianwei.com/ubuntu%E5%AE%89%E8%A3%85svn%E6%9C%8D%E5%8A%A1%E5%8F%8A%E9%85%8D%E7%BD%AE/)
[svn-dockerfile](https://github.com/garethflowers/svn-server)
