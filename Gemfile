source 'http://rubygems.org'

gem 'rails', '~> 3.1.0.rc6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
  gem 'capistrano'
end

group :production do
  gem 'mysql2'
end

# Asset template engines
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc", :require => 'coffee_script'
  gem 'uglifier'
  gem 'therubyracer'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# To use debugger
gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
