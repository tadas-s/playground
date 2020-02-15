FROM ruby:2.7.0

WORKDIR /app

RUN gem install bundler --version 2.1.4

COPY Gemfile* ./

RUN bundle install

COPY . /app/

EXPOSE 3000
ENTRYPOINT ["/app/bin/docker-entrypoint"]
CMD ["console"]
