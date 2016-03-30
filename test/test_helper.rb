ENV["RACK_ENV"] ||= "test"

require 'bundler'
Bundler.require

require File.expand_path("../../config/environment", __FILE__)
require 'minitest/autorun'
require 'capybara'

require 'database_cleaner'
DatabaseCleaner.strategy = :truncation, {except: %w[public.schema_migrations]}
#truncation - runs truncation command in SQL deletes info and keeps table structure
#deletion - will delete table
#transaction - begin transaction, won't delete anything. unpredictable

Capybara.app = FilmFile
