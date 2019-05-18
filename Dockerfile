FROM ruby:2.5.0-alpine

ENV LANG C.UTF-8
COPY src /usr/local/myapp/src
COPY data /usr/local/myapp/data
COPY execute.sh /usr/local/myapp/execute.sh
COPY Gemfile Gemfile

WORKDIR /usr/local/myapp

RUN apk update && \
    apk upgrade && \
    gem install bundler --no-document && \
    bundle install && \
    chmod +x /usr/local/myapp/execute.sh

CMD '/usr/local/myapp/execute.sh'