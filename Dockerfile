FROM ruby:3.1.2 as development

RUN apt-get update && \
    apt-get install -y build-essential && \
    bundle config --global frozen 1

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

ENTRYPOINT ["/app/bin/docker-entrypoint"]

COPY . .

FROM development as production

RUN bundle exec rake assets:precompile
