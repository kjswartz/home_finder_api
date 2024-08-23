# README
* Ruby version
  - ruby '3.0.2'

# Running tests
- ensure the docker container is running `docker-compose up -d`
- then you can run `docker-compose exec web bundle exec rspec` in your terminal to run the tests via the docker container

## Getting Started with Home finder API
- clone down app code
- run `bundle install` to setup gems 
- run `rails db:setup` to setup the database, run the migrations and seed.
- run app with `foreman start` command in console
- app runs on port 3001

## Running tests
- To run tests use `rails spec` in the console. 
