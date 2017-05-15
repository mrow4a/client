FROM owncloud/alpine:latest
MAINTAINER ownCloud DevOps <devops@owncloud.com>

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

RUN apk update && \
  apk add build-base cmake qt5-qttools-dev qt5-qtwebkit-dev qt5-qtkeychain-dev@testing && \
  rm -rf /var/cache/apk/*

WORKDIR /
COPY rootfs /

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/owncloud-docker/client.git"
LABEL org.label-schema.name="ownCloud Client"
LABEL org.label-schema.vendor="ownCloud GmbH"
LABEL org.label-schema.schema-version="1.0"
