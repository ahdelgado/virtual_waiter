# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'autoprefixer-rails'
gem 'aws-sdk-s3', require: false

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
gem 'bootstrap'
gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'devise'
gem 'font-awesome-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'jquery-fileupload-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'mini_magick'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'paranoia'
gem 'pg'
gem 'puma'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'sass-rails'
gem 'sidekiq'
gem 'simple_form'
gem 'turbolinks'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rake'
  gem 'rspec-rails'
  gem 'rubocop', require: false
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
  gem 'rails-erd'
end

group :production do
  gem 'rails_12factor'
  gem 'dalli'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
end
