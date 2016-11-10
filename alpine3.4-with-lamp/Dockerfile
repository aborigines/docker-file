FROM alpine:3.4

ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.0

RUN apk add --no-cache --force bash apache2 apache2-utils apache2-ssl php5-apache2 php5-cli php5-mysql php5-curl php5-gd php5-intl php5-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ps php5-pspell php5-sqlite3 php5-tidy php5-xmlrpc php5-xsl php5-redis@edge php5-xdebug php5-apcu php5-pdo mysql mysql-client vim python py-pip && pip install --upgrade pip && pip install supervisor==$SUPERVISOR_VERSION
RUN mkdir -p /run/apache2
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]