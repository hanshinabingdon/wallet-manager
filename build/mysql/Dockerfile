FROM mysql:8.0.23

RUN apt-get update && \
    apt-get -y install locales-all

ENV LANG="ja_JP.UTF-8"

COPY ./initdb.d/ /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD="root"
ENV MYSQL_DATABASE="wallet_manager_db"
ENV MYSQL_USER="wm_admin" 
ENV MYSQL_PASSWORD="wm_admin_pass"
ENV TZ="Asia/Tokyo"

CMD mysqld