# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lagotto-rb/version'

Gem::Specification.new do |s|
  s.name        = 'lagotto-rb'
  s.version     = Lagotto::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0'
  s.date        = '2016-01-08'
  s.summary     = "Lagotto client for Ruby"
  s.description = "Lagotto client for Ruby - get altmetrics from any Lagotto installation."
  s.authors     = ["Scott Chamberlain"]
  s.email       = 'myrmecocystus@gmail.com'
  s.homepage    = 'http://github.com/lagotto/lagotto-rb'
  s.licenses    = 'MIT'

  s.files = `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]
  s.bindir      = 'bin'
  s.executables = ['lagotto']

  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake", '~> 0'
  s.add_development_dependency "test-unit", '~> 3.1'
  s.add_development_dependency "simplecov", '~> 0.10'
  s.add_development_dependency "codecov", '~> 0.1'

  s.add_runtime_dependency 'thor', '~> 0.18'
  s.add_runtime_dependency 'launchy', '~> 2.4', '>= 2.4.2'
  s.add_runtime_dependency 'faraday', '~> 0.9.1'
  s.add_runtime_dependency 'faraday_middleware', '~> 0.10.0'
  s.add_runtime_dependency 'multi_json', '~> 1.0'
end
