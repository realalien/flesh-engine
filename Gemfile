source 'https://rubygems.org'

gem 'rails', '3.2.3'

# newsly added gems 
gem 'mongoid',  '2.4.10'
gem 'bson', '=1.6.2'
gem 'bson_ext', '=1.6.2' # http://goo.gl/d3XDe
gem 'devise', :git => 'https://github.com/plataformatec/devise.git'
gem 'cancan'
gem 'jquery-rails'
gem 'passenger'
gem 'capistrano'
#gem "compass", ">= 0.12.1"
gem 'haml'

# integrate weibo
#gem 'omniauth' , '~>0.2.6' #, '>= 0.2.6'
#gem 'oa-oauth' # , '~> 0.2.2'
#gem 'oa-oauth' # , '~' #'>= 0.3.2'
#gem 'omniauth_china', '~>0.0.3' #~> 0.1.1'
#gem 'omniauth-weibo-oauth2'

gem 'omniauth'
#gem 'oa-oauth' #, '~>0.3.2'
#gem 'omniauth-twitter',  :git => 'https://github.com/arunagw/omniauth-twitter.git'
#gem 'omniauth-weibo', :git => 'https://github.com/ballantyne/omniauth-weibo.git'
gem 'omniauth-weibo-oauth2', :git => 'https://github.com/beenhero/omniauth-weibo-oauth2.git'

gem "grizzly-weibo",'~> 0.3.6' , :require => "grizzly"
#Deprecated: gem "faraday_stack", :git => "https://github.com/mislav/faraday-stack.git"
gem "faraday_middleware", :git => "https://github.com/pengwynn/faraday_middleware.git"


# ---- Experimental ----
# For interactivity
#gem "google_visualr", ">= 2.1"
# consider writing a ruby wrapper for Cocos2D javascript


gem 'mongoid_taggable'

# ----------------------
group :development, :test do
  gem 'capybara'
  gem 'cucumber'
  # gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'autotest'
  gem 'launchy'
  gem 'faker'
  gem 'ruby-debug19'
  gem 'haml-rails'

  # Resolve the rcov dependencies, REF. https://github.com/iain/metrical/issues/12  
  gem 'metrical'
  #gem 'metric_fu'

  # Resolve 
  gem 'test-unit'
end

group :test do
  gem 'cucumber-rails'
end

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'

  # Not sure if we will use compass and related gems
  #gem 'compass'
  #gem 'compass-rails' 
end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
