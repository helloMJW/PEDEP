#!/bin/bash
#如果项目不存在侧克隆项目
if [ ! -d "./wwwroot/websvn" ]; then
    git clone https://github.com/websvnphp/websvn.git ./wwwroot/websvn
    git -C ./wwwroot/websvn checkout 2.3.3
    cp ./wwwroot/config.php ./wwwroot/websvn/include/config.php
fi
docker-compose up -d
