FROM alpine:3.8

ARG AVAHI_VERSION=0.7
ARG AVAHI_RELEASE=r1
ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer niclas@mietz.io

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.name="Docker Avahi" \
      org.label-schema.url="https://github.com/solidnerd/docker-avahi/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/solidnerd/docker-avahi.git" \
      org.label-schema.vcs-type="Git"

RUN apk add --no-cache \
    avahi=$AVAHI_VERSION-$AVAHI_RELEASE \
    avahi-tools=$AVAHI_VERSION-$AVAHI_RELEASE 

ENTRYPOINT ["avahi-daemon"]
