source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :production do
  # gems specifically for Heroku go here
  gem "pg"
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :test do
  gem 'cucumber-rails'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end


# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "rails-erd", "~> 0.4.5"

gem 'will_paginate', '>= 3.0.pre'

group :test do
  #Pretty printed test output
  gem 'turn', :require => false
  gem 'minitest'
end