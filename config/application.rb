# frozen_string_literal: true

require 'rubygems'
require 'bundler'
require 'colorize'
require 'down'
require 'pry'

APP_ROOT = File.expand_path('..', __dir__)

Dir["#{APP_ROOT}/src/**/*.rb"].map { |f| require f }
