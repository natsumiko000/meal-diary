source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'sqlite3'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap'

gem 'bootstrap'
gem "font-awesome-rails"
gem "jquery-ui-rails"
gem 'font-awesome-sass'
gem 'jquery-rails'
gem 'toastr-rails'
gem 'devise'
gem 'ransack'
gem 'fullcalendar-rails'
gem 'momentjs-rails'
gem 'slim-rails'
gem 'whenever'
gem 'chart-js-rails', '~> 0.1.4'
gem 'kaminari'
gem 'i18n'
gem 'enum_help'
gem 'carrierwave'
gem 'toastr-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'rails-i18n'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener_web', '~> 1.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'rspec-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'dotenv-rails'
gem 'listen', '>= 3.0.5', '< 3.2'

group :production do
  gem 'mysql2'
end