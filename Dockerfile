FROM ruby:2.5
RUN apt-get update && apt-get install -y \
            build-essential \
            libpq-dev \
            nodejs \
            postgresql-client \
            yarn
WORKDIR /compose-lesson
COPY Gemfile Gemfile.lock /compose-lesson/
RUN bundle install