FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn
RUN curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
RUN mkdir /app
WORKDIR /app
COPY app/Gemfile /app/Gemfile
COPY app/Gemfile.lock /app/Gemfile.lock
RUN bundle update && bundle install
COPY app/ /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
WORKDIR /app

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
