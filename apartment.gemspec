# -*- encoding: utf-8 -*-
$: << File.expand_path("../lib", __FILE__)
require "apartment/version"

Gem::Specification.new do |s|
  s.name = %q{apartment}
  s.version = Apartment::VERSION

  s.authors = ["Ryan Brunner", "Brad Robertson"]
  s.summary = %q{A Ruby gem for managing database multitenancy in Rails applications}
  s.description = %q{Apartment allows Rails applications to deal with database multitenancy}
  s.email = %w{ryan@ryanbrunner.com bradleyrobertson@gmail.com}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  
  s.homepage = %q{http://github.com/bradrobertson/apartment}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  
  s.add_dependency 'rails', '~> 3.0.10'   # must be >= 3.0.10 due to poor schema support pre 3.0.10, but < 3.1 because it hasn't been fully tested yet
  s.add_development_dependency 'rake', '~> 0.8.7'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'rspec-rails', '~> 2.6.1'
  s.add_development_dependency 'capybara', '1.0.0'
  s.add_development_dependency 'pg', '~> 0.11.0'
  s.add_development_dependency 'mysql2', '0.2.7'
  s.add_development_dependency "silent-postgres", "~> 0.1.1"
  s.add_development_dependency 'delayed_job', '~> 2.1.4'
end
