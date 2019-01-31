FROM ruby:2.6.0-alpine

# Install dependencies
RUN apk add --update git openssh-client

RUN apk add hub --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

ENV BUNDLER_VERSION=2.0.1
RUN gem update --system 2.7.7 && \
    gem install bundler -v ${BUNDLER_VERSION}
