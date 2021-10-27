# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

group :development, :test do
  # https://github.com/pry/pry#overview
  gem 'pry', '~> 0.14.1'
  # https://github.com/rubocop/rubocop#quickstart
  gem 'rubocop', '~> 1.19'
  # https://github.com/rubocop-hq/rubocop-performance#usage
  gem 'rubocop-performance', '~> 1.11'
  # https://github.com/backus/rubocop-rspec
  gem 'rubocop-rspec', '~> 2.5'
end

group :test do
  # https://github.com/rspec/rspec#setup
  gem 'rspec', '~> 3.10'
  # https://github.com/teamcapybara/capybara#setup
  gem 'capybara', '~> 3.36'
  # https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '~> 5.0'
  # https://github.com/thoughtbot/factory_bot#install
  gem 'factory_bot', '~> 6.2'
  # https://github.com/faker-ruby/faker#default
  gem 'faker', '~> 2.19'
  # https://github.com/bblimke/webmock#installation
  gem 'webmock', '~> 3.14'
end

# https://github.com/fazibear/colorize#usage
gem 'colorize', '~> 0.8.1'
# https://github.com/janko/down#downloading
gem 'down', '~> 5.2'
