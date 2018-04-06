FROM ruby:2.5.1-alpine

# Install dependencies
RUN apk add --update git openssh-client

RUN apk add hub --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
