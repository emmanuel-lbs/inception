
FROM debian:buster

RUN     apt-get update \
                && apt-get upgrade -y

RUN apt-get -y install mariadb-client mariadb-server

ARG  ROOT_PWD
ARG  USER
ARG  USER_PWD

RUN service mysql start \
        && mariadb -e \
        "CREATE DATABASE wordpress; \
        CREATE USER '$USER'@'%' IDENTIFIED BY '$USER_PWD'; \
        GRANT ALL PRIVILEGES ON wordpress.* TO '$USER'@'%'; \
        ALTER USER root@'localhost' IDENTIFIED BY '$ROOT_PWD';"

EXPOSE 3306

CMD ["mysqld", "--bind-address=0.0.0.0"]
