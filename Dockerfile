FROM phusion/baseimage:0.9.22

ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/metabrainz/base-image.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1" \
      org.label-schema.vendor="MetaBrainz Foundation" \
      org.metabrainz.based-on-image="phusion/baseimage:0.9.22"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install --no-install-suggests --no-install-recommends -y unzip curl wget iputils-ping bzip2 \
    && apt-get upgrade -y -o Dpkg::Options::="--force-confold" \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
