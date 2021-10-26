# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

group :development, :test do
  # https://github.com/pry/pry#overview
  gem 'pry', '~> 0.14.1'
  # https://github.com/rspec/rspec#setup
  gem 'rspec', '~> 3.10'
  # https://github.com/rubocop/rubocop#quickstart
  gem 'rubocop', '~> 1.19'
  # https://github.com/rubocop-hq/rubocop-performance#usage
  gem 'rubocop-performance', '~> 1.11'
  # https://github.com/backus/rubocop-rspec
  gem 'rubocop-rspec', '~> 2.5'
end
