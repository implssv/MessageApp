source 'https://rubygems.org'
ruby '2.3.3'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'simple_form', '~> 3.4'
gem 'devise', '~> 4.2'
gem 'faker', '~> 1.7', '>= 1.7.3'
gem 'will_paginate', '~> 3.1', '>= 3.1.5'
gem 'jquery-turbolinks'
gem 'redcarpet'
gem "font-awesome-rails"
gem 'md_simple_editor'
gem 'mini_magick'
gem "paperclip", "~> 5.0.0"
gem 'search_cop'
gem 'fog'
gem 'carrierwave'
gem 'gravatarify', '~> 3.0.0'

group :development, :test do

  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do

  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
