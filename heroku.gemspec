$:.unshift File.expand_path("../lib", __FILE__)
require "heroku/version"

Gem::Specification.new do |gem|
  gem.name    = "heroku"
  gem.version = Heroku::VERSION

  gem.author      = "Heroku"
  gem.email       = "support@heroku.com"
  gem.homepage    = "http://heroku.com/"
  gem.summary     = "Client library and CLI to deploy Rails apps on Heroku."
  gem.description = "Client library and command-line tool to manage and deploy Rails apps on Heroku."
  gem.executables = "heroku"

  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|bin/|data/|ext/|lib/|spec/|test/)} }

  gem.add_development_dependency "fakefs",  "~> 0.3.1"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec",   "~> 1.3.0"
  gem.add_development_dependency "taps",    "~> 0.3.11"
  gem.add_development_dependency "webmock", "~> 1.5.0"

  gem.add_dependency "rest-client", ">= 1.4.0", "< 1.7.0"
  gem.add_dependency "launchy",     "~> 0.3.2"
  gem.add_dependency "json",        "~> 1.4.6"
end
