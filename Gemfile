source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails',                  '5.0.0'
gem 'puma',                   '2.15.3'
gem 'therubyracer'
gem 'secure_headers',         '2.4.4'
gem 'coffee-rails',           '4.2.1'
gem 'jquery-rails',           '4.1.1'
gem 'turbolinks',             '~> 5.0'
gem 'jbuilder',               '2.5.0'
gem 'slim-rails',             '3.1.0'
gem 'pg',                     '0.18.4'
gem 'sass-rails',             '5.0.5'
gem 'uglifier',               '2.7.2'
gem 'simple_form',            '3.2.1'
gem 'flutie',                 '2.0.0'
gem 'bourbon',                '4.2.6'
gem 'neat',                   '1.7.2'
gem 'bitters',                '1.1.0'
gem 'refills',                '0.1.0'
gem 'normalize-rails',        '3.0.3'
gem 'rollbar',                '2.11.3'
gem 'devise',                 '~> 4.2.0'
gem 'bootstrap-sass',         '~> 3.3.7'
gem 'font-awesome-rails',     '4.7.0.1'
gem 'ransack'
gem 'will_paginate',          '~> 3.1.0'
gem 'will_paginate-bootstrap'
gem 'activemodel-serializers-xml', git: 'https://github.com/rails/activemodel-serializers-xml'
gem 'draper',                  github: 'audionerd/draper', branch: 'rails5'
gem 'sucker_punch'
gem 'rename'

group :production, :staging do
  gem 'rails_12factor',       '0.0.3'
  gem 'rack-canonical-host',  '0.2.2'
  gem 'newrelic_rpm',         '~> 3.12'
  gem 'librato-rails',        '1.0.0'
end

group :development do
  gem 'foreman',              '0.78.0'
  gem 'jumpup',               '0.0.8'
  gem 'jumpup-heroku',        '0.0.6'
  gem 'better_errors',        '2.1.1'
  gem 'binding_of_caller',    '0.7.2'
  gem 'letter_opener',        '1.4.1'
  gem 'bullet',               '5.1.1'
  gem 'listen',               '3.1.5'
end

group :test do
  gem 'shoulda-matchers',     '3.0.1', require: false
  gem 'simplecov',            '0.11.1', require: false
  gem 'email_spec',           '1.6.0'
  gem 'capybara',             '2.12.0'
  gem 'poltergeist',          '1.8.0'
  gem 'database_cleaner',     '1.5.1'
  gem 'guard-rspec',           require: false
  gem 'rails-controller-testing'
end

group :development, :test do
  gem 'rspec-rails',           '3.5.1'
  gem 'factory_girl_rails',    '4.5.0'
  gem 'pry-rails',             '0.3.4'
  gem 'dotenv-rails',          '2.1.1'
  gem 'awesome_print',         '1.6.1'
  gem 'spring-commands-rspec', '1.0.4'
  gem 'byebug',                '8.2.1'
  gem 'spring',                '1.5.0'
end
