source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
#gemspec

#gem 'debug'#, '~> 1.11', '>= 1.11.1'
gem 'rails'#, '~> 8.1', '>= 8.1.2'
gem "propshaft"
gem 'pg'#, '~> 1.6', '>= 1.6.3'
gem 'puma'#, '~> 7.2'
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"#, "~> 4.0" #{a}"~> 3.3.1"
#gem "tailwindcss-ruby", "3.4.13"
gem 'psych'#, '~> 5.3', '>= 5.3.1'
gem "jbuilder"
# gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem 'image_processing'#, '~> 1.14'
gem 'devise'#, '~> 5.0'
gem 'madmin'#, '~> 2.3', '>= 2.3.2'
gem 'faker'#, '~> 3.6'
gem 'pagy', '~> 9.4'

gem 'elasticsearch-model'
gem 'elasticsearch-rails'

gem 'searchkick'#, '~> 6.0', '>= 6.0.3'
gem 'elasticsearch'#, '~> 9.2'

gem 'pg_search'#, '~> 2.3', '>= 2.3.7'
gem 'pg_query'#, '~> 6.1'

gem 'cssbundling-rails'#, '~> 1.4', '>= 1.4.1'
gem "appraisal"
gem 'ransack'#, '~> 4.4', '>= 4.4.1'

gem 'ffaker'#, '~> 2.23'
gem 'friendly_id'#, '~> 5.5', '>= 5.5.1'
gem 'name_of_person'#, '~> 1.1', '>= 1.1.3'
gem 'paper_trail'#, '~> 16.0'
gem 'standardrb'#, '~> 1.0', '>= 1.0.1'
gem 'web-console', group: :development

gem 'standard'#, '~> 1.43'
gem 'pry'#, '~> 0.15.2'
gem 'test-unit'#, '~> 3.6', '>= 3.6.7'
gem 'timecop'#, '~> 0.9.10'
gem 'yard'#, '~> 0.9.38'

gem 'ansi'
gem 'cane'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end
group :development do
  #gem "web-console", '~> 4.2', '>= 4.2.1'
  gem 'rspec'
  gem 'solargraph'#, '~> 0.50.0'
end
group :test do
  gem "actionmailer"#, ">= 7.0.0"
  gem 'activesupport'
  gem 'codecov', require: false
  gem 'i18n'
  gem 'minitest'#, '~> 5.25', '>= 5.25.4'
  gem 'minitest-reporters'#, '~> 1.7', '>= 1.7.1'
  gem 'oj', require: false     # false is for testing with or without it
  gem 'rack'
  gem 'rake-manifest'
  gem 'rematch'
  gem 'rubocop'
  gem 'rubocop-minitest'
  gem 'rubocop-packaging'
  gem 'rubocop-performance'
  gem 'rubocop-rake'
  gem 'simplecov', require: false
  gem "capybara"
  gem "selenium-webdriver"
end
group :apps do
  gem 'rerun'
  gem 'sinatra'#, '~> 4.1', '>= 4.1.1'
  gem 'sinatra-contrib'#, '~> 4.1', '>= 4.1.1'

  # gem 'slim'
  # gem 'haml'
end
group :performance do
  gem 'benchmark-ips'
  gem 'kalibera'
  gem 'memory_profiler'
end
