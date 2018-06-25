FROM python:alpine
LABEL maintainer="newbIT AG <influx@newbit.ch>"

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.15.45 

RUN pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*
