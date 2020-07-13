#!/bin/bash
set -x;

NGINX_MAJOR_MAINLINE=1
NGINX_MINOR_MAINLINE=19
NGINX_PATCH_MAINLINE=1

docker push nginxinc/nginx-unprivileged;

export DOCKER_CLI_EXPERIMENTAL=enabled;

## Alpine images

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:mainline-alpine \
  nginxinc/nginx-unprivileged:mainline-alpine-amd64 \
  nginxinc/nginx-unprivileged:mainline-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:mainline-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:mainline-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:mainline-alpine-i386 \
  nginxinc/nginx-unprivileged:mainline-alpine-ppc64le \
  nginxinc/nginx-unprivileged:mainline-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:mainline-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:1-alpine \
  nginxinc/nginx-unprivileged:1-alpine-amd64 \
  nginxinc/nginx-unprivileged:1-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:1-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:1-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:1-alpine-i386 \
  nginxinc/nginx-unprivileged:1-alpine-ppc64le \
  nginxinc/nginx-unprivileged:1-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:1-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:alpine \
  nginxinc/nginx-unprivileged:alpine-amd64 \
  nginxinc/nginx-unprivileged:alpine-arm32v6 \
  nginxinc/nginx-unprivileged:alpine-arm32v7 \
  nginxinc/nginx-unprivileged:alpine-arm64v8 \
  nginxinc/nginx-unprivileged:alpine-i386 \
  nginxinc/nginx-unprivileged:alpine-ppc64le \
  nginxinc/nginx-unprivileged:alpine-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:alpine;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:mainline-alpine-perl \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:mainline-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:mainline-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:1-alpine-perl \
  nginxinc/nginx-unprivileged:1-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:1-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:1-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:1-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:1-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:1-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:1-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:1-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-alpine-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:alpine-perl \
  nginxinc/nginx-unprivileged:alpine-perl-amd64 \
  nginxinc/nginx-unprivileged:alpine-perl-arm32v6 \
  nginxinc/nginx-unprivileged:alpine-perl-arm32v7 \
  nginxinc/nginx-unprivileged:alpine-perl-arm64v8 \
  nginxinc/nginx-unprivileged:alpine-perl-i386 \
  nginxinc/nginx-unprivileged:alpine-perl-ppc64le \
  nginxinc/nginx-unprivileged:alpine-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:alpine-perl;

## Debian images

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE} \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE};

docker manifest create --amend nginxinc/nginx-unprivileged:mainline \
  nginxinc/nginx-unprivileged:mainline-amd64 \
  nginxinc/nginx-unprivileged:mainline-arm32v5 \
  nginxinc/nginx-unprivileged:mainline-arm32v7 \
  nginxinc/nginx-unprivileged:mainline-arm64v8 \
  nginxinc/nginx-unprivileged:mainline-i386 \
  nginxinc/nginx-unprivileged:mainline-mips64le \
  nginxinc/nginx-unprivileged:mainline-ppc64le \
  nginxinc/nginx-unprivileged:mainline-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:mainline;

docker manifest create --amend nginxinc/nginx-unprivileged:1 \
  nginxinc/nginx-unprivileged:1-amd64 \
  nginxinc/nginx-unprivileged:1-arm32v5 \
  nginxinc/nginx-unprivileged:1-arm32v7 \
  nginxinc/nginx-unprivileged:1-arm64v8 \
  nginxinc/nginx-unprivileged:1-i386 \
  nginxinc/nginx-unprivileged:1-mips64le \
  nginxinc/nginx-unprivileged:1-ppc64le \
  nginxinc/nginx-unprivileged:1-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:1;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE} \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE};

docker manifest create --amend nginxinc/nginx-unprivileged:latest \
  nginxinc/nginx-unprivileged:latest-amd64 \
  nginxinc/nginx-unprivileged:latest-arm32v5 \
  nginxinc/nginx-unprivileged:latest-arm32v7 \
  nginxinc/nginx-unprivileged:latest-arm64v8 \
  nginxinc/nginx-unprivileged:latest-i386 \
  nginxinc/nginx-unprivileged:latest-mips64le \
  nginxinc/nginx-unprivileged:latest-ppc64le \
  nginxinc/nginx-unprivileged:latest-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:latest;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}.${NGINX_PATCH_MAINLINE}-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:mainline-perl \
  nginxinc/nginx-unprivileged:mainline-perl-amd64 \
  nginxinc/nginx-unprivileged:mainline-perl-arm32v5 \
  nginxinc/nginx-unprivileged:mainline-perl-arm32v7 \
  nginxinc/nginx-unprivileged:mainline-perl-arm64v8 \
  nginxinc/nginx-unprivileged:mainline-perl-i386 \
  nginxinc/nginx-unprivileged:mainline-perl-mips64le \
  nginxinc/nginx-unprivileged:mainline-perl-ppc64le \
  nginxinc/nginx-unprivileged:mainline-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:mainline-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:1-perl \
  nginxinc/nginx-unprivileged:1-perl-amd64 \
  nginxinc/nginx-unprivileged:1-perl-arm32v5 \
  nginxinc/nginx-unprivileged:1-perl-arm32v7 \
  nginxinc/nginx-unprivileged:1-perl-arm64v8 \
  nginxinc/nginx-unprivileged:1-perl-i386 \
  nginxinc/nginx-unprivileged:1-perl-mips64le \
  nginxinc/nginx-unprivileged:1-perl-ppc64le \
  nginxinc/nginx-unprivileged:1-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:1-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-amd64 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-arm32v5 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-arm32v7 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-arm64v8 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-i386 \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-mips64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-ppc64le \
  nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:${NGINX_MAJOR_MAINLINE}.${NGINX_MINOR_MAINLINE}-perl;

docker manifest create --amend nginxinc/nginx-unprivileged:perl \
  nginxinc/nginx-unprivileged:perl-amd64 \
  nginxinc/nginx-unprivileged:perl-arm32v5 \
  nginxinc/nginx-unprivileged:perl-arm32v7 \
  nginxinc/nginx-unprivileged:perl-arm64v8 \
  nginxinc/nginx-unprivileged:perl-i386 \
  nginxinc/nginx-unprivileged:perl-mips64le \
  nginxinc/nginx-unprivileged:perl-ppc64le \
  nginxinc/nginx-unprivileged:perl-s390x;

docker manifest push --purge nginxinc/nginx-unprivileged:perl;
