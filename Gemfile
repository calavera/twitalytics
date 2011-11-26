source 'http://rubygems.org'

gem 'rails', '3.1.1'

# START:sqlite
if defined?(JRUBY_VERSION)
  gem 'activerecord-jdbc-adapter', :require => false
  gem 'jdbc-sqlite3', :require => false
else
  gem 'sqlite3-ruby', :require => 'sqlite3'
end
# END:sqlite

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.1"
  gem 'coffee-rails', "~> 3.1.1"
  gem 'uglifier'
end

gem 'jquery-rails'
gem "json"
gem "tweetstream", "1.0.4"
gem 'twitter', '~> 1.7.2'

# START:get_back
platform :jruby do
  gem "get_back"
  # END:get_back
  # START:jruby_openssl
  gem "jruby-openssl"
  # END:jruby_openssl
  # START:get_back
end
# END:get_back

group :test do
  gem 'turn', :require => false
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'execjs'
  gem 'selenium-client', :require => 'selenium/client'
  gem 'selenium-webdriver'
  gem 'headless'
  gem 'minitest'
end

# START:production
group :production do
  gem 'jdbc-postgres'
  # START:therubyrhino
  gem "therubyrhino"
  # END:therubyrhino
end
# END:production

# START:deploy
group :deploy do
  gem "net-ssh", :require => "net/ssh"
  gem "net-scp", :require => "net/scp"
  gem "warbler"
  # START:capistrano
  gem "capistrano"
  gem "ffi-ncurses"
  # END:capistrano
end
# END:deploy

# START:trinidad_diagnostics_extension
gem "trinidad"
gem "trinidad_diagnostics_extension"
# END:trinidad_diagnostics_extension
# START:trinidad_scheduler_extension
gem "trinidad_scheduler_extension"
# END:trinidad_scheduler_extension
# START:trinidad_resque_extension
gem "trinidad_resque_extension"
# END:trinidad_resque_extension

