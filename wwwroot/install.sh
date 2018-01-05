#! /bin/sh
#判断是否已经部署

apk add expect
apk add mysql-client
#创建数据库
HOSTNAME='mysql5.6'
PORT='3306'
USERNAME='root'
PASS='root'

DBNAME='asgardcms'

MYSQL_CMD="mysql -h ${HOSTNAME} -P ${PORT} -u ${USERNAME} -p${PASS}"
echo ${MYSQL_CMD}
echo "create database ${DBNAME}"
create_db_sql="create database IF NOT EXISTS ${DBNAME} DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
echo ${create_db_sql} | ${MYSQL_CMD}

composer create-project asgardcms/platform asgardcms
./asgardcms.exp
