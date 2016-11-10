FROM alpine:3.3

ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.0

RUN apk add --no-cache bash docker python py-pip && pip install --upgrade pip && pip install supervisor==$SUPERVISOR_VERSION
COPY supervisord.conf /etc/supervisord.conf
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]