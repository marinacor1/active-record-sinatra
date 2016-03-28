source 'https://rubygems.org'
#three environments, testing, development, production
gem 'sinatra', require: 'sinatra/base'
#using modular version of sinatra
gem 'sqlite3'
gem 'activerecord'
gem 'sinatra-activerecord' #link

group :development, :test do #allows you to group certain gems during development
  gem 'shotgun' #heroku will run this one
  gem 'minitest'
  gem 'tux' #allows you direct access to database 
  gem 'capybara'
end
