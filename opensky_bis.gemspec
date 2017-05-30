# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opensky_bis/version'

Gem::Specification.new do |spec|
  spec.name          = "opensky_bis"
  spec.version       = OpenskyBis::VERSION
  spec.authors       = ["Jacob Mack"]
  spec.email         = ["jacob.mack@opensky.com"]

  spec.summary       = 'OSP Merchant API Gem'
  spec.description   = 'A Ruby gem for interacting with the OSP Merchant API. http://bisapidocs.opensky.com/'
  spec.homepage      = 'https://github.com/Storenvy/opensky_bis'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|opensky_bis-.*gem)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activemodel', '~> 4.2'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency 'shoulda-matchers', '~> 2.8'
  spec.add_development_dependency 'pry', "~>0.10.1"
end
