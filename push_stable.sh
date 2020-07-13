#!/bin/bash
set -x;

NGINX_MAJOR_STABLE=1
NGINX_MINOR_STABLE=18
NGINX_PATCH_STABLE=0

docker push nginxinc/nginx-unprivileged;

export DOCKER_CLI_EXPERIMENTAL=enabled;

## Alpine images

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:stable-alpine \
  nginxinc/nginx-unprivileged:stable-alpine-amd64 \
  nginxinc/nginx-unprivileged:stable-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:stable-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:stable-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:stable-alpine-i386 \
  nginxinc/nginx-unprivileged:stable-alpine-ppc64le \
  nginxinc/nginx-unprivileged:stable-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:stable-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:stable-alpine-perl \
  nginxinc/nginx-unprivileged:stable-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:stable-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:stable-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:stable-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:stable-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:stable-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:stable-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:stable-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-alpine-perl;

## Debian images

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE} \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE};

docker manifest create --amend nginxinc/nginx-unprivileged:stable \
  nginxinc/nginx-unprivileged:stable-amd64 \
  nginxinc/nginx-unprivileged:stable-arm32v5 \
  nginxinc/nginx-unprivileged:stable-arm32v7 \
  nginxinc/nginx-unprivileged:stable-arm64v8 \
  nginxinc/nginx-unprivileged:stable-i386 \
  nginxinc/nginx-unprivileged:stable-mips64le \
  nginxinc/nginx-unprivileged:stable-ppc64le \
  nginxinc/nginx-unprivileged:stable-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:stable;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE} \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE};

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}.${NGINX_PATCH_STABLE}-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:stable-perl \
  nginxinc/nginx-unprivileged:stable-perl-amd64 \
  nginxinc/nginx-unprivileged:stable-perl-arm32v5 \
  nginxinc/nginx-unprivileged:stable-perl-arm32v7 \
  nginxinc/nginx-unprivileged:stable-perl-arm64v8 \
  nginxinc/nginx-unprivileged:stable-perl-i386 \
  nginxinc/nginx-unprivileged:stable-perl-mips64le \
  nginxinc/nginx-unprivileged:stable-perl-ppc64le \
  nginxinc/nginx-unprivileged:stable-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:stable-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_STABLE}.${NGINX_MINOR_STABLE}-perl;
