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

