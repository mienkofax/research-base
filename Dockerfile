FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    adns-tools \
    build-essential \
    dnsutils \
    libcurl4-gnutls-dev \
    libgit2-dev \
    libpq-dev \
    libssl-dev \
    libxml2-dev \
    make \
    python3-pip \
    python3-venv \
    r-base \
    && apt-get clean

# install R DGA - https://github.com/jayjacobs/dga
ADD . /research-base/

RUN pip3 install --no-cache-dir -r /research-base/requirements.txt

WORKDIR /research-base/
RUN ./install.sh

RUN pip3 install --upgrade pip
