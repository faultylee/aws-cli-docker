FROM alpine:3.11

# Versions: https://pypi.python.org/pypi/awscli#downloads
ENV AWS_CLI_VERSION 1.16.7

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awscli==${AWS_CLI_VERSION} && \
    # Install Saw
    apk --no-cache add git go musl-dev && \
    go get -u github.com/TylerBrock/saw && \
    # Clean cache
    rm -rf /var/cache/apk/*

WORKDIR /data

COPY ./commands /data

ENV PATH /data:/root/go/bin:$PATH