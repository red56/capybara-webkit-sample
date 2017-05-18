source 'https://rubygems.org'
ruby "2.3.4"

gem "rails", "~> 4.2.0"
gem 'nokogiri'
gem 'pg'

gem "rake", :require => false

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :test do
  gem 'rspec_junit_formatter', github: 'timdiggins/rspec_junit_formatter', branch: 'report-line-number-of-inclusion'
  # for circleci, see https://circleci.com/docs/test-metadata
  gem 'webmock', require: false
  gem "climate_control"
  gem 'capybara'

  gem 'capybara-webkit'
  gem "capybara-screenshot", github: 'mattheworiordan/capybara-screenshot', branch: 'master'
end
