source 'https://rubygems.org'

gem 'rails', '4.0.0'
ruby '2.0.0'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'debugger'
  gem 'launchy'
  gem 'capybara'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'cucumber-rails-training-wheels'
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.0', require: false
  gem 'shoulda'
  gem 'database_cleaner'
end

group :assets do
#  gem 'activeadmin'
  gem 'sass-rails', '~> 4.0.0.rc2'
#  gem "meta_search",    '>= 1.1.0.pre'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'therubyracer', platforms: :ruby
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'rails-i18n', '~> 4.0.0' # For 4.0.x

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'haml'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
