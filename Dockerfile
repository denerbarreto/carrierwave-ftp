FROM ruby:3.2.0

RUN mkdir -p /gem
WORKDIR /gem

ADD . ./

RUN gem install bundler && bundle install --jobs 20 --retry 5
