# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'mysql2', '>= 0.4.4'
gem 'rails', '6.0.1'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap'
gem 'jbuilder'
gem 'jwt'
gem 'paranoia'
gem 'puma', '~> 4.3'
gem 'rack-cors'
gem 'rails-i18n'
gem 'seed-fu'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
