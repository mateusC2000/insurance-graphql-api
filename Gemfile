source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"
gem "rails", "~> 7.0.8", ">= 7.0.8.1"

gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "graphql", "~> 2.0"
gem "graphiql-rails", group: :development

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end
