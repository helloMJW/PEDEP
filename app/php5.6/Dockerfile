FROM php:5-fpm-alpine
MAINTAINER HelloMJW majinawei168@outlook.com

#替换国内镜像
COPY ./source.list /etc/apk/repositories

RUN apk update

#时区配置
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime 
RUN echo $TIMEZONE > /etc/timezone

#安装svn服务端
RUN apk add subversion && \
    mkdir /home/svn
RUN svnserve -d -r /home/svn
