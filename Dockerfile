############################################################
# Dockerfile to run cross-domain-cookies
# Based on Alpine
############################################################

FROM alpine:3.5

MAINTAINER Jam Risser (jamrizzi)

EXPOSE 8804

WORKDIR /app/

RUN apk add --no-cache tini && \
    apk add --no-cache --virtual build-deps \
    gcc \
    go \
    musl-dev \
    openssl

COPY ./ /app/.tmp/
RUN export GOPATH=/app/.tmp/ && \
    go build /app/.tmp/server.go && \
    rm -rf /app/.tmp/ && \
    apk del build-deps

ENTRYPOINT ["/sbin/tini", "--", "/app/server"]
