FROM phusion/baseimage:0.9.19

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
	&& apt-get install --no-install-suggests -y unzip curl wget \
	&& apt-get upgrade -y -o Dpkg::Options::="--force-confold" \
        && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
