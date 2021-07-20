FROM ruby:2.6.6

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile

RUN apt-get update -qq && apt-get install -y build-essential && apt-get install -y libpq-dev && gem install bundler:2.0.1

RUN bundle install

ADD . /app
