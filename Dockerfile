FROM ruby:3.0.2

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory
WORKDIR /home_finder_api

# Install gems
COPY Gemfile /home_finder_api/Gemfile
COPY Gemfile.lock /home_finder_api/Gemfile.lock
RUN bundle install

# Copy the rest of the application code
COPY . /home_finder_api

# Copy entrypoint script
COPY docker-entrypoint.sh /usr/bin/
COPY wait-for-it.sh /usr/bin/

# Ensure the entrypoint script is executable
RUN chmod +x /usr/bin/docker-entrypoint.sh /usr/bin/wait-for-it.sh

# Set the entrypoint script
ENTRYPOINT ["docker-entrypoint.sh"]

# Default command
CMD ["rails", "server", "-b", "0.0.0.0"]
