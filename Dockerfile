FROM phusion/baseimage:jammy-1.0.1

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-suggests --no-install-recommends -y unzip curl wget iputils-ping \
    && apt-get upgrade -y -o Dpkg::Options::="--force-confold" \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
