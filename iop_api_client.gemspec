
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "iop_api_client/version"

Gem::Specification.new do |spec|
  spec.name          = "iop_api_client"
  spec.version       = IopApiClient::VERSION
  spec.authors       = ["xuteng.xt"]
  spec.email         = ["xuteng.xt@alibaba-inc.com"]

  spec.summary       = "Rest API Client For International Open Platform"
  spec.description   = "A simple rest API client For International Open Platform for ruby"
  spec.homepage      = "http://rubygems.org/gems/iop_api_client"
  spec.license       = "MIT"

  spec.files         = ["lib/iop_api_client.rb","lib/iop_api_client/version.rb","Gemfile","iop_api_client.gemspec","LICENSE.txt","Rakefile","README.md"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'rest-client', '~> 2.0', '>= 2.0.2'
  spec.add_runtime_dependency 'openssl', '~> 2.0'
  spec.required_ruby_version = '>= 2.0.0'
end
