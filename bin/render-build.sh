#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake db:drop DISABLE_DATABASE_ENVIRONMENT_CHECK=1
bundle exec GRANT CONNECT ON DATABASE thedb TO public;
bundle exec rake db:create
bundle exec rake db:migrate