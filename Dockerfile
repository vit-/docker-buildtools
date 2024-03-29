FROM docker
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
  bumpversion \
  pre-commit

RUN wget -O /tmp/helm.tar.gz https://get.helm.sh/helm-v3.12.0-linux-amd64.tar.gz && \
  tar -C /tmp -xvf /tmp/helm.tar.gz && \
  mv /tmp/linux-amd64/helm /bin/ && \
  rm -rf /tmp/*
ADD https://storage.googleapis.com/kubernetes-release/release/v1.28.1/bin/linux/amd64/kubectl /bin/
RUN chmod +x /bin/kubectl

