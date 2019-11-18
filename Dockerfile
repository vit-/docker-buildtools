FROM docker:stable
MAINTAINER Vitalii Vokhmin

RUN apk add --no-cache \
  python3 \
  python3-dev \
  git \
  py-pip \
  make \
  libffi-dev \
  openssl-dev \
  gcc \
  libc-dev

RUN pip3 install \
  docker-compose \
  bumpversion

RUN wget -O /tmp/helm.tar.gz https://get.helm.sh/helm-v3.0.0-linux-amd64.tar.gz && \
  tar -C /tmp -xvf /tmp/helm.tar.gz && \
  mv /tmp/linux-amd64/helm /bin/ && \
  rm -rf /tmp/*

