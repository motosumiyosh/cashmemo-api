FROM ruby:2.6.5-alpine

RUN mkdir /app_name 
ENV APP_ROOT /app_name 
WORKDIR $APP_ROOT

ENV LANG C.UTF-8
ENV PAGER busybox less
ENV DEBIAN_FRONTEND noninteractive

ENV TZ Asia/Tokyo

RUN apk update && \
  apk upgrade && \
  apk add --update\
  bash \
  build-base \
  fontconfig \
  git \
  linux-headers \
  mysql-dev \
  nodejs \
  npm \
  openssh \
  openssl-dev \
  ruby-dev \
  ruby-json \
  yaml \
  yaml-dev \
  tzdata \
  yarn

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
ADD . $APP_ROOT

