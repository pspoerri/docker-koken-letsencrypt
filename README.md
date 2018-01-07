# Docker Koken Let's Encrypt

This koken setup integrates into the [docker-compose-letsencrypt-nginx-proxy-companion](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion): 
We assume that another service is terminating the SSL. This setup is intended for servers that run multiple services on one machine.

## How to use it

1. Setup the [docker-compose-letsencrypt-nginx-proxy-companion](https://github.com/evertramos/docker-compose-letsencrypt-nginx-proxy-companion)
2. Clone the repository `git clone https://github.com/pspoerri/docker-koken-letsencrypt.git`

3. Make a copy of `.env.sample`, rename it to `.env` and adapt it to your needs.
```
# The name of the container
CONTAINER_NAME=koken
# Domain that koken should run on
DOMAIN=example.com

# Koken data directory. Make sure the folder is different than the MYSQL_DATA_DIR
KOKEN_DATA_DIR=./data/koken

# Mysql/Mariadb data directory. Make sure the folder is different than the KOKEN_DATA_DIR
MYSQL_DATA_DIR=./data/mysql

# Mysql Root Password. Please regenerate (you can generate password with pwgen e.g. pwgen -s 32)
MYSQL_ROOT_PASSWORD=n1Pijff8y3BZ2QIQx6aMSx4oR9ad0DPk

# Mysql database for koken
MYSQL_DATABASE=koken

# Mysql user for koken
MYSQL_USER=koken

# Mysql password for koken. Please regenerate (you can generate password with pwgen e.g. pwgen -s 32)
MYSQL_PASSWORD=b5TcpAnQSTjjYWJ3FwkrCT4UnwIC6WG3

# EMail for Let's encrypt
LETSENCRYPT_EMAIL=user@example.com

# The network for the docker-compose-letsencrypt-nginx-proxy-companion 
NETWORK=webproxy
```
Please note that the setup only supports one domain name. If you want to support multiple domains then you will need to adapt the `docker-compose.yml` file. 
4. Start nginx by running `./start.sh`

## Commands

 - `database_backup.sh` to create a backup of the database
 - `database_restore.sh` to restore the backup of the database **untested, use at your own risk**

## Attribution

This image was inspired by the following docker images:

 - [koken/docker-koken-lemp](https://github.com/koken/docker-koken-lemp)
 - [kdelfour/docker-koken](https://github.com/kdelfour/docker-koken)
 - [nicokaiser/docker-koken](https://github.com/nicokaiser/docker-koken)
