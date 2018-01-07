#!/usr/bin/env bash
source .env

dbserver=${CONTAINER_NAME}-db
mysql_root_password=${MYSQL_ROOT_PASSWORD}

docker exec $dbserver /usr/bin/mysqldump -u root --password="${mysql_root_password}" --all-databases >  backups/database.sql

