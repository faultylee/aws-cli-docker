FROM alpine:3.7

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.34

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less curl bash jq wget postgresql-client zip && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    rm -rf /var/cache/apk/*

RUN pip install awslogs==0.10.0

WORKDIR /data
