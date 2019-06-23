FROM docker:stable
MAINTAINER Vitalii Vokhmin

RUN apk add --no-cache \
  git \
  py-pip \
  make \
  python-dev \
  libffi-dev \
  openssl-dev \
  gcc \
  libc-dev

RUN pip install \
  docker-compose \
  bumpversion

RUN wget -O /tmp/helm.tar.gz https://get.helm.sh/helm-v2.14.1-linux-amd64.tar.gz && \
  tar -C /tmp -xvf /tmp/helm.tar.gz && \
  mv /tmp/linux-amd64/helm /bin/ && \
  rm -rf /tmp/* && \
  helm init --client-only

