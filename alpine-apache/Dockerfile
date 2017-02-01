FROM alpine:latest

ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.0

RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --no-cache --force bash apache2 apache2-utils apache2-ssl php5-apache2 php5-cli php5-mysql php5-mysqli php5-curl php5-gd php5-intl php5-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ps php5-pspell php5-sqlite3 php5-tidy php5-xmlrpc php5-xsl php5-redis@testing php5-xdebug php5-apcu php5-pdo php5-pdo_sqlite php5-pdo_mysql php5-pdo_pgsql php5-json php5-openssl php5-ctype php5-iconv mysql-client vim python py-pip && pip install --upgrade pip && pip install supervisor==$SUPERVISOR_VERSION
RUN mkdir -p /run/apache2 && \
    chown -R apache:apache /run/apache2 && \
    mkdir /www && \
    chown -R apache:apache /www
ADD 000-default.conf /etc/apache2/conf.d/000-default.conf
ADD 001-default-ssl.conf /etc/apache2/conf.d/001-default-ssl.conf
ADD httpd.conf /etc/apache2/httpd.conf
COPY supervisord.conf /etc/supervisord.conf
EXPOSE 80
EXPOSE 443
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]