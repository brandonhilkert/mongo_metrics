# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongo_metrics/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brandon Hilkert"]
  gem.email         = ["brandonhilkert@gmail.com"]
  gem.description   = %q{Mongo Metrics helps you keep track of the queries being triggered in a Rails application.}
  gem.summary       = %q{Mongo Metrics is query tracker for Rails}
  gem.homepage      = "https://github.com/brandonhilkert/mongo_metrics"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongo_metrics"
  gem.require_paths = ["lib"]
  gem.version       = MongoMetrics::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.9"
  gem.add_dependency "rails", ">= 3.0.0"
  gem.add_dependency "mongo_mapper"
  gem.add_dependency "bson_ext"
  gem.add_dependency "mongo-rails-instrumentation"
end
