#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# ./bin/rails assets:precompile
# ./bin/rails assets:clean
# bundle exec rails devise:install
# bundle exec rails db:create
# bundle exec rails db:migrate
# bundle exec rails db:seed