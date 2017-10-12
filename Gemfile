source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.2'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'jbuilder', '~> 2.5'
gem 'settingslogic'
gem 'enumerize'
gem 'ransack'
gem 'kaminari'
gem 'annotate'
gem 'carrierwave'
gem 'mini_magick'
gem 'rambulance'
gem 'bcrypt', '~> 3.1.7'
gem 'sorcery'
gem 'administrate'
gem 'bourbon'
gem "administrate-field-image"

# css
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# js
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
# gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'mysql2', '>= 0.3.18', '< 0.5'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'license_finder'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop'
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'rack-mini-profiler'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
end

group :production, :staging do
  gem 'pg', '0.18.4'
  gem 'therubyracer', platforms: :ruby
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]